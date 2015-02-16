$(document).ready(function() {
   $('.boxdiv').mouseenter(function() 
   {
       $(this).animate({
           height: '+=10px'
       });
   });
   
   $('.boxdiv').mouseleave(function() {
       $(this).animate({
           height: '-=10px'
       });
   });
   
// ********** Custom for table_test.html *********  

// When you hover over a TH cell, apply the highlight class to it
   $('th').hover(function(){
    $(this).toggleClass('highlight');
});

// When you hover over a TD cell, apply the highlight class to it
   $('td').hover(function(){
    $(this).toggleClass('highlight');
});

// When you hover over the table2 class, apply the border class to it
			// and apply the border class to all TD cells in table2 class
	$('.table2').hover(function(){
    $(this).toggleClass('border');
	$('table2 > td').toggleClass('border');
});
   
});