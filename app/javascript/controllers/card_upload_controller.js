import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "preview"]
  previewImage() {
    const [file] = this.inputTarget.files
    if (file) {
      this.previewTarget.src = URL.createObjectURL(file)
      this.previewTarget.style.display = 'block'
    }
  }
}
