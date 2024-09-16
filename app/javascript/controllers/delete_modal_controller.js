import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="delete-modal"
export default class extends Controller {
  connect() {
    // console.log("delete-modal connected")
  }

  hide_modal(e) {
    const deleteModal = document.getElementById("modalDelete")
    if (deleteModal) {
      deleteModal.style.display = "none"
    }
  }
}
