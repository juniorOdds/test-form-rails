import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-modal"
export default class extends Controller {
  connect() {
    console.log("update-modal connected")
  }

  hide_modal(e) {
    const updateModal = document.getElementById("modalEdit")
    if (updateModal) {
      updateModal.style.display = "none"
    }
  }
  closeUpdateModal(e) {
    const updateModal = document.getElementById("modalEdit")
    if (updateModal) {
      updateModal.style.display = "none"
    }
  }
}
