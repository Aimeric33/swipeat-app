import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="disable-button"
export default class extends Controller {
  static targets = ["map"]

  connect() {
    // console.log("hello")
  }

  hide() {
    this.mapTarget.classList.toggle("d-none")
  }
}
