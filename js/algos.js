//Release 0
//Write a function that takes an array as an argument.
//Inside that function write a for loop that iterates through each element and compares it with the next one.
//Compare the elements to the first one an.
//Add driver code to test it.

var arr = ["a", "bcde", "longerphrase"]
	
	var l = arr[0];
	
	for (i = 0; i < arr.length; i ++) {
	if (arr[i].length > arr[0].length) {
		var l = arr [i];
		console.log(l)
	}
}