import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button"]

  connect() {
    console.log('hello')
  }
  disable() {
    // this.element.setAttribute("disabled", "")
    this.buttonTarget.classList.toggle("d-none")
  }
}
