import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="step-visibility"
export default class extends Controller {
  static targets = ["subscriptionId", "step2"];

  connect() {
    this.step2Target.style.display = "none"; // Masquer l'étape 2 au départ
  }

  showStep2() {
    const subscriptionId = this.subscriptionIdTarget.value;
    console.log("Selected Subscription ID:", subscriptionId);

    this.step2Target.style.display = "block"; // Afficher l'étape 2
  }
}
