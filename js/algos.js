
//Release 0
//Write a function that takes an array as an argument.
//Inside that function write a for loop that iterates through each element.
//Declare a variable that equals to the first element.
//In the loop compare each element to that variable. If length is longer save it in the same variable.
//Add driver code to test it.




function longestWord(words)	{
	var longest = words[0];
	for (i = 0; i < words.length; i ++) {
		if (words[i].length > longest.length) {
			longest = words[i];
		}	
	}
	return longest;
}

var random = ["Long phrase", "Loooooongest phrase", "Not the longest"];
console.log(longestWord(random));



//Release 1
//Write a function that takes two hashes as arguments.
//Within that function write two for loops that iterate through each of the hashes keys and values.
//If there is a match for both keys and values return true. Else false.
//Add driver code.




var objectA = {name: "Steven", age: 54}
var objectB = {name: "Tamir", age: 54}


function objectMatch(objectA, objectB) {
	for (var key in objectA) {
		for (var key2 in objectB){
			if (key === key2 && key[objectA] === key2[objectB]){
				return true;
			}
		}
	}
}
