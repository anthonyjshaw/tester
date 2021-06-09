import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'feed' ];

  refresh(event) {
    console.log(event);
  }
}