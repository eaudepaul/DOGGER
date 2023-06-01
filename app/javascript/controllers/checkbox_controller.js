import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
export default class extends Controller {
  static targets = ["togglableElement"]
  connect() {
    console.log("Hello from checkbox controller");
  }

  fire() {
    console.log("fire");
    this.togglableElementTarget.classList.toggle("d-none");
  }
}
