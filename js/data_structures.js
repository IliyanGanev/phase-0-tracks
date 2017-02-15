var colors = ["red", "blue", "yellow", "green"];
var names = ["Ed", "John", "Bob", "Frank"];

console.log(colors);
console.log(names);

colors.push("purple");
console.log(colors);

names.push("Shawn");
console.log(names);

function Car(color, make, type) {
this.color = color;
this.make = make;
this.type = type;

}