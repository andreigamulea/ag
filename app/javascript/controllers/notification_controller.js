import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["message"]

  show() {
    this.messageTarget.classList.remove("hidden")
    setTimeout(() => {
      this.messageTarget.classList.add("hidden")
    }, 3000)
  }
}