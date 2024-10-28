import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["emailSlot"]

  reveal() {
    this.emailSlotTarget.innerHTML = "contact@renodor.co"
    this.emailSlotTarget.classList.add("opacity-100")
  }
}
