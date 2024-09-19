import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="register-modal"
export default class extends Controller {
  connect() {

  }

  hide_modal(e) {
    const registerModal = document.getElementById("modalRegister")
    if (registerModal) {
      registerModal.style.display = "none"
    }
  }
  closeRegisterModal(e) {
    const registerModal = document.getElementById("modalRegister")
    if (registerModal) {
      registerModal.style.display = "none"
    }
  }
}
