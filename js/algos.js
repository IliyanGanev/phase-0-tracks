//Release 0
//Write a function that takes an array as an argument.
//Inside that function write a for loop that iterates through each element.
//Declare a variable that equals to the first element.
//In the loop compare each element to that variable. If length is longer save it in the same variable.
//Add driver code to test it.



function longestWord(words)	{
	var long = words[0];
	
	for (i = 0; i < words.length; i ++) {
		if (words[i].length > words[0].length) {
			var long = words[i];
		}	
	}
	return(long);
}

var random = ["a", "bcde", "longerphrase"];
console.log(longestWord(random));