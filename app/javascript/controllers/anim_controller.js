import { Controller } from "@hotwired/stimulus"
import gsap from 'gsap'

export default class extends Controller {
  connect() {
    console.log("Initializing GSAP animation...")

    // Select the elements you want to animate
    const elements = document.querySelectorAll('.anim')

    // Define the animation
    gsap.from(elements, {
      opacity: 0,          // Start opacity
      duration: 2,         // Animation duration
      stagger: 0.4,        // Stagger animation for each element
      ease: "power2.inOut" // Easing function
    })
  }
}