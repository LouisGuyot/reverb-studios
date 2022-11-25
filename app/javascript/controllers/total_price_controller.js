import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total-price"
export default class extends Controller {

  static values = { price: Number }

  static targets = ["startDateInput", "endDateInput"]


  calculatePrice() {

    console.log("hi")
    let date2 = new Date(this.endDateInputTarget.value);
    let date1 = new Date(this.startDateInputTarget.value);

    console.log(date1)
    console.log(date2)

    let Difference_In_Time = date2.getTime() - date1.getTime();


    let Difference_In_Days = Difference_In_Time / (1000 * 3600 * 24);

    let totalPrice = this.priceValue * Difference_In_Days

    document.getElementById("this-stuff").innerHTML = totalPrice.toString()
  }

  connect() {
    console.log(this.startDateInputTarget)
  }
}
