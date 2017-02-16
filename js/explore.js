//Write a function that reverses a string.
//Create a for loop that loops backwords while the string length is true.
//Add driver code to that calls the function with string parameter that has to be reversed.
//Store the result in a new variable.
//Add conditional logic that prints the variable if condition evaluates to true.


var reversedString = "";

function reverse(parameter) {
	for (i = parameter.length - 1; i >= 0; i -- ) {
		eversedString += parameter[i];
      
	}
	return reversedString;
}


reverse("string");
console.log(reversedString);
