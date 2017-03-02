//Play with the h2 element 

$(document).ready(function(){
    $("h2").click(function(){
        $("span").toggle(1500);
        $("p").toggle(1500);
    });

	$("h2").mouseenter(function(){
    	$(this).css("background-color", "#cccccc");
	});

	$("h2").mouseleave(function(){
    	$(this).css("background-color", "#EFF0E9");
	});


	$("h2").click(function(){
		$("#pic1").animate({
      	width: "900px",
      	height: "250px"
    	}, {
      	duration: 5000,
      	easing: "swing",   
    	});
  	});


	$("h2").click(function(){
    	$("ul").animate({
     	letterSpacing: "4px"
    	}, {
      	duration: 3000,
      	easing: "swing",
    	});


    	$("ul").animate({
     	letterSpacing: "1px"
    	}, {
      	duration: 1000,
      	easing: "linear",
    	});
		
  	});

//Play with pic1 element

  	$("#pic1").mouseenter(function(){
    	$(this).animate({
      	width: "800px",
      	height: "300px"
    	}, {
      	duration: 1000,
      	easing: "swing",   
    	});
	});

	$("#pic1").mouseleave(function(){
    	$(this).animate({
      	width: "900px",
      	height: "250px"
    	}, {
      	duration: 1000,
      	easing: "swing",   
    	});
	});

});




