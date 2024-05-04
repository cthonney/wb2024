import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dark-mode"
export default class extends Controller {
  connect() {
    console.log("Hello");
  }

  toggle() {
    document.body.classList.toggle("dark");
  }
}
