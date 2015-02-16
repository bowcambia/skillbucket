$(document).ready(function() {
   $('div').mouseenter(function() 
   {
       $(this).animate({
           height: '+=10px'
       });
   });
   
   $('div').mouseleave(function() {
       $(this).animate({
           height: '-=10px'
       });
   });
   
   $('th').hover(function(){
    $(this).toggleClass('highlight');
});

   $('td').hover(function(){
    $(this).toggleClass('highlight');
});
   
   $('div').click(function() {
       $(this).toggle(1000);
   }); 
});