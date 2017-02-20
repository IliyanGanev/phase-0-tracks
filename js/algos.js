
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

//Driver code
//var random = ["Long phrase", "Loooooongest phrase", "Not the longest"];
//console.log(longestWord(random));



//Release 1
//Write a function that takes two hashes as arguments.
//Within that function write two for loops that iterate through each of the hashes keys and values.
//If there is a match for both keys and values return true. If there is no match the function will return false.
//Add driver code.


function objectMatch(objectA, objectB) {
	for (var key in objectA) {
		for (var key2 in objectB){
			if (key === key2 && objectA[key] === objectB[key2]) {
				return true;
			} 			
		}
	}
	return false;
}


//Driver code
//var objectA = {name: "Steven", age: 54}
//var objectB = {name: "Steven", age: 59}
//console.log(objectMatch(objectA, objectB));


//Release2
//Write a function that takes an integer as argument and generates as many random words as the argument.(words length must be between 1 and 10).
//Write a for loop that iterates number of words times.
//Write another nested loop that adds random letters to an empty string forming a word.
//Add the words to an empty array.
//Return the array.
//Release 2.1
//Write driver code that does the following 10 times.Generates and prints an array, feeds the array in the longest word function and prints the result.


function randomWords(numOfWords) {
	var wordsArr = [];
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	
	for (i = 0; i < numOfWords; i++) {
    	var word = "";
		for ( k = 0; k < Math.floor(Math.random() * 10); k++ ) {
			word += alphabet[Math.floor(Math.random() * 25)];
		}
	wordsArr.push(word);
	}
	return wordsArr;
}


//Driver code.
//console.log(randomWords(2));

	function print(times) {
		for (j = 0; j < times; j ++) {
 			result = randomWords(5);
			console.log(result);
			console.log(longestWord(result));
		}
	}

print(10);
