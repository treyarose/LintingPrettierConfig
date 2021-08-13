import { LightningElement, track } from "lwc";
export default class HelloWorld extends LightningElement {
  @track greeting = "World";
  changeHandler(event) {
    this.greeting = event.target.value;
  }

  handleLint() {
    //uncomment to test lint and prettier working:
    //   if(true){
    //   }
    //   var help;
  }
}
