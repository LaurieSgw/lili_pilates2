import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["subscription"];
  selectedSubscription = null; // L'élément sélectionné
  selectedSubscriptionId = null; // L'ID de l'élément sélectionné

  selection(event) {
    const target = event.currentTarget;

    // Si une case était déjà sélectionnée
    if (this.selectedSubscription) {
      // Si la case cliquée est la même que celle déjà sélectionnée, la désélectionne
      if (this.selectedSubscription === target) {
        this.selectedSubscription.classList.remove("selected");
        this.selectedSubscription = null;
        this.selectedSubscriptionId = null;
      } else {
        // Sinon, désélectionne la précédente et sélectionne la nouvelle
        this.selectedSubscription.classList.remove("selected");
        target.classList.add("selected");
        this.selectedSubscription = target;
        this.selectedSubscriptionId = target.getAttribute("data-id");
      }
    } else {
      // Aucune case sélectionnée, sélectionne simplement la case cliquée
      target.classList.add("selected");
      this.selectedSubscription = target;
      this.selectedSubscriptionId = target.getAttribute("data-id");
    }
  }
}


  // static targets = [ "abo10", "abo20", "gratuit", "uneseance", "course" ]

  // selection(event) {
  //   console.log("helloo");

  //   event.preventDefault()
  //    this.abo10Target.classList.toggle("card-abo-click");
  //    this.abo20Target.classList.toggle("card-abo-click");
  //    this.gratuitTarget.classList.toggle("card-abo-click");
  //    this.uneseanceTarget.classList.toggle("card-abo-click");
  //    this.courseTarget.classList.toggle("card-abo-click");
