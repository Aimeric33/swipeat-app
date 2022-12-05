import { Controller } from "@hotwired/stimulus"
import Hammer from "hammerjs"

// Connects to data-controller="swipe"
export default class extends Controller {
  static targets = ["swipeCard", "likeForm", "dislikeForm", "superlikeForm"]

  connect() {
    // console.log(this.swipeCardTarget);
    const hammertime = new Hammer(this.swipeCardTarget);
    // console.log(hammertime);
    hammertime.get('pan').set({ direction: Hammer.DIRECTION_ALL });
    hammertime.get('pinch').set({ enable: true });

    hammertime.on('pan', (event) => {
      this.swipeCardTarget.classList.add('moving');
      this.swipeCardTarget.style.transform = "translate(" + event.deltaX + "px, " + event.deltaY + "px)";
    });

    hammertime.on("panend", (event) => {
      var absVel = Math.abs(event.velocity);
      var absDelX = Math.abs(event.deltaX);
      this.swipeCardTarget.classList.remove('moving');

      if (absDelX > 80) {
        // If the photo had a "like"/"dislike" reaction
        // Photo fades faster if dragged faster, beetwen 400 and 150ms
        var transitionDuration = 250 / (absVel + 0.4) > 150 ? 250 / (absVel + 0.4) > 400 ? 400 : 250 / (absVel + 0.4) : 150;
        this.swipeCardTarget.style.transitionDuration = transitionDuration + 'ms';
        var rotate = event.deltaX * event.deltaY * 4e-4;
        // And is thrown farther too
        var mult = absVel > 1.4 ? absVel : 1.4;
        this.swipeCardTarget.style.transform = "translate(" + event.deltaX * 1.4 * mult + "px, " + event.deltaY * mult + "px) rotate(" + rotate * mult + "deg)";
        // Fade out
        this.swipeCardTarget.style.opacity = 0;
        // And the photo returns
        if (event.deltaX > 200) {
          console.log('like');
          this.createFav(this.likeFormTarget);
        } else if (event.deltaX < -200) {
          console.log('DISLIKE');
          this.createFav(this.dislikeFormTarget);
        }
        repeat(transitionDuration);
      } else if (event.deltaY < -72) {
        // If the photo had a "super like" reaction, very similar code to the previous one
        var transitionDuration = 250 / (absVel + 0.4) > 150 ? 250 / (absVel + 0.4) > 400 ? 400 : 250 / (absVel + 0.4) : 150;
        this.swipeCardTarget.style.transitionDuration = transitionDuration + 'ms';
        var mult = absVel > 2 ? absVel : 2;
        this.swipeCardTarget.style.transform = "translate( 0px, " + event.deltaY * mult + "px)";
        this.swipeCardTarget.style.opacity = 0;
        console.log('superlike');
        this.createFav(this.superlikeFormTarget);
        repeat(transitionDuration);
      } else {
        // If the photo didn't have a reaction, it goes back to the middle
        this.swipeCardTarget.style.transform = '';
      }
    } );

    const repeat = (transitionDuration = 350) => {
      this.swipeCardTarget.style.transform = '';
      this.swipeCardTarget.style.opacity = 1;
    }
  }

  createFav(form) {

    fetch(form.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(form)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data);
      });
  }
}
