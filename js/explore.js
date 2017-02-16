//Write a function that reverses a string.
//Create a for loop that loops backwords while the string length is true.
//Add driver code to that calls the function with string parameter that has to be reversed.
//Store the result in a new variable.
//Add conditional logic that prints the variable if condition evaluates to true.




function reverse (string) {
	var reversedString = "";
	for (i = string.length - 1; i >= 0; i -- ) {
		reversedString += string[i];  
	}
	if (reversedString.length >= 15 ) {
		console.log("Try something shorter!");
	} else if (reversedString === string ) {
		console.log("The word is a palindrome! No need to reverse.");
	} else {
		console.log(reversedString);
	}	
}


//Driver code:
reverse("work");
reverse("kayak");
reverse("veryveryloooongword");



