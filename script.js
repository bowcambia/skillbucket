$(document).ready
(
    function() 
    {
        // $('div').slideDown('slow');
		$('#disappear').fadeOut(1000);
    }
);

$('.table').hover(
  function() {
    $(this).addClass('highlight');
  }, function() {
    $(this).removeClass('highlight');
  }
)