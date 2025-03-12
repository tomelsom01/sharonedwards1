// app/javascript/controllers/ethereum_controller.js

import { Controller } from "@hotwired/stimulus"

export default class ControllerController extends Controller {
  connect() {
    if (typeof window !== 'undefined' && window.ethereum) {
      // Your code here to interact with ethereum
      console.log("Ethereum is available:", window.ethereum);
      // Example: Initialize a Web3 provider
      const provider = new ethers.providers.Web3Provider(window.ethereum);
      // Continue with your Ethereum logic here
    } else {
      console.log("Ethereum is not available.");
    }
  }
}
