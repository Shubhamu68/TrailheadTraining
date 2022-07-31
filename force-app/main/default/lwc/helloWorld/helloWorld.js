import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'Default';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}