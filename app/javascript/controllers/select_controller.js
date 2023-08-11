import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="select"
export default class extends Controller {
  static targets = ["subscription"];

  selection(event) {
    this.subscriptionTargets.forEach(target => {
      target.classList.remove("selected");
    });

    event.currentTarget.classList.add("selected");
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


  }
