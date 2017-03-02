
//Release 1
var photo = document.getElementById("lizard-photo");
photo.style.border = "3px solid green";


var strong = document.getElementsByTagName("strong")
strong[0].style.border = "1px dotted red";


 var list = document.getElementById("list").querySelectorAll("li");
    for (i = 0; i < list.length; i++) {
        list[i].style.backgroundColor = "grey";
 }


//Release 2
function hideElement(event){
	event.target.hidden = true;
}
strong[0].addEventListener("click", hideElement);



function addElement(event) {
  console.log(event);
  event.target.style.border = "3px solid blue";
  var newli = document.createElement("li");
  var ul = document.getElementsByTagName("ul");
  var text = document.createTextNode("My chameleon likes to be petted.");
  newli.appendChild(text);
  ul[0].appendChild(newli);
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addElement);