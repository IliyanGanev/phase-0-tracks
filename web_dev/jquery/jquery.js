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
      duration: 5000,
      easing: "swing",
     
    });
  });






});




