import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["link"]

  connect() {
  }

  colorLink(event) {
    console.log(event.currentTarget);
    this.linkTargets.forEach((element) => {
      element.classList.remove('colored');
    });
    event.currentTarget.classList.add('colored');
  }
}
