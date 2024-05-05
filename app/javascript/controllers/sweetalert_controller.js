import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

// Connects to data-controller="sweetalert"
export default class extends Controller {
  static targets = ["button"]

  connect() {
    console.log("SweetAlert connected");
  }

  // Connects to data-action="click->sweetalert#showAlert"
  showAlert() {
    Swal.fire({
      title: "Payment Successful",
      text: "The payment has been done successfully.",
      icon: "success",
      confirmButtonText: "Confirm Payment",
      // When the user confirms the modal, send the user to /bookings
      confirmButtonColor: "#6BDAB0",
      allowOutsideClick: false,
    }).then((result) => {
      if (result.isConfirmed) {
        window.location.href = "/bookings";
      }
    });
  }
}
