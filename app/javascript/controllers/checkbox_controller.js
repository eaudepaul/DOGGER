import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
export default class extends Controller {
  static targets = ["dog"]
  connect() {
  }

  fire() {
    this.dogTargets.forEach(dog => {
      if (!(dog.dataset.mine === "true") ) {
        dog.classList.toggle("d-none")
      }
    });
  }
}
