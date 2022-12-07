import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"

export default class extends Controller {
  static targets = ["button", "select"]
  static values = {
    url:String,
    options:Object
  }

  connect() {
    new TomSelect(this.element, this.optionsValue)
  }
  disable() {
    // this.element.setAttribute("disabled", "")
    this.buttonTarget.classList.toggle("d-none")
  }
}
