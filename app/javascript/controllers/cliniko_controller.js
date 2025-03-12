import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["iframe"];

  connect() {
    window.addEventListener("message", this.handleIFrameMessage.bind(this));
  }

  handleIFrameMessage(event) {
    if (typeof event.data !== "string") return;

    if (event.data.includes("cliniko-bookings-resize")) {
      const height = Number(event.data.split(":")[1]);
      this.iframeTarget.style.height = `${height}px`;
    }

    if (event.data.includes("cliniko-bookings-page")) {
      this.iframeTarget.scrollIntoView();
    }
  }
}
