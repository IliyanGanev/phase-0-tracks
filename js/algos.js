//Release 0
//Write a function that takes an array as an argument.
//Inside that function write a for loop that iterates through each element.
//Declare a variable that equals to the first element.
//In the loop coompare each element to that variable.If length is longer save it in the same variable.
//Add driver code to test it.

var arr = ["a", "bcde", "longerphrase"]
	
	var l = arr[0];
	
	for (i = 0; i < arr.length; i ++) {
	if (arr[i].length > l.length) {
		var l = arr [i];
		console.log(l)
	}

}
console.log(l)