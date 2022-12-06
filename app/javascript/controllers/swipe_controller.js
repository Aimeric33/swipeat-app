import { Controller } from "@hotwired/stimulus"
import Hammer from "hammerjs"

// Connects to data-controller="swipe"
export default class extends Controller {
  static targets = ["swipeCard", "likeForm", "dislikeForm", "superlikeForm"]

  connect() {
    this.swipeCardTargets.forEach((element) => {

      let hammertime = new Hammer(element);
      // console.log(hammertime);
      hammertime.get('pan').set({ direction: Hammer.DIRECTION_ALL });
      hammertime.get('pinch').set({ enable: true });

      hammertime.on('pan', (event) => {
        element.classList.add('moving');
        element.classList.toggle("like", event.deltaX > 80);
        element.classList.toggle("nope", event.deltaX < -80);
        element.classList.toggle("superlike", event.deltaY > 80);
        element.style.transform = "translate(" + event.deltaX + "px, " + event.deltaY + "px)";
      });

      hammertime.on("panend", (event) => {
        var absVel = Math.abs(event.velocity);
        var absDelX = Math.abs(event.deltaX);
        element.classList.remove('moving');

        if (absDelX > 80) {
          // If the photo had a "like"/"dislike" reaction
          // Photo fades faster if dragged faster, beetwen 400 and 150ms
          var transitionDuration = 250 / (absVel + 0.4) > 150 ? 250 / (absVel + 0.4) > 400 ? 400 : 250 / (absVel + 0.4) : 150;
          element.style.transitionDuration = transitionDuration + 'ms';
          var rotate = event.deltaX * event.deltaY * 4e-4;
          // And is thrown farther too
          var mult = absVel > 1.4 ? absVel : 1.4;
          element.style.transform = "translate(" + event.deltaX * 1.4 * mult + "px, " + event.deltaY * mult + "px) rotate(" + rotate * mult + "deg)";
          // Fade out
          element.style.opacity = 0;
          // And the photo returns
          if (event.deltaX > 200) {
            console.log('like');
            this.createFav(this.likeFormTargets[this.likeFormTargets.length -1]);
          } else if (event.deltaX < -200) {
            console.log('DISLIKE');
            this.createFav(this.dislikeFormTargets[this.dislikeFormTargets.length -1]);
          }
        } else if (event.deltaY > 200) {
          // If the photo had a "super like" reaction, very similar code to the previous one
          var transitionDuration = 250 / (absVel + 0.4) > 150 ? 250 / (absVel + 0.4) > 400 ? 400 : 250 / (absVel + 0.4) : 150;
          element.style.transitionDuration = transitionDuration + 'ms';
          var mult = absVel > 2 ? absVel : 2;
          element.style.transform = "translate( 0px, " + event.deltaY * mult + "px)";
          element.style.opacity = 0;
          console.log('superlike');
          this.createFav(this.superlikeFormTargets[this.superlikeFormTargets.length -1]);
        } else {
          // If the photo didn't have a reaction, it goes back to the middle
          element.style.transform = '';
        }
      } );
    });
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
