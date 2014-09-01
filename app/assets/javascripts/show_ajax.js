$('html').click(function() {
  $('#show-details').fadeOut(1000);
  $('.project-pic').fadeIn(500);
});
$('#show-details img.close').click(function() {
  $('#show-details').fadeOut(1000);
  $('.project-pic').fadeIn(500);
});

$('#show-details').click(function(event){
  event.stopPropagation();  
});

