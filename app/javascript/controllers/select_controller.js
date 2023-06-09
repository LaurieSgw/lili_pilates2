import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="select"
export default class extends Controller {
  static targets = [ "abo10", "abo20", "gratuit", "uneseance", "course" ]

  selection(event) {
    console.log("helloo");

    event.preventDefault()
     this.abo10Target.classList.toggle("card-abo-click");
     this.abo20Target.classList.toggle("card-abo-click");
     this.gratuitTarget.classList.toggle("card-abo-click");
     this.uneseanceTarget.classList.toggle("card-abo-click");
     this.abo10Target.classList.toggle("card-abo");
     this.abo20Target.classList.toggle("card-abo");
     this.gratuitTarget.classList.toggle("card-abo");
     this.uneseanceTarget.classList.toggle("card-abo");
     this.gratuitTarget.classList.toggle("card-abo");
     this.abo10Target.classList.toggle("card-abo");
     this.abo20Target.classList.toggle("card-abo");
     this.uneseanceTarget.classList.toggle("card-abo");






  }
}
