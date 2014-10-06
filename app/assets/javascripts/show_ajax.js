$('html').click(function() {
  $('#show-details').fadeOut(1000);
  $('.project-pic').fadeIn(100);
});
$('#show-details img.close').click(function() {
  $('#show-details').fadeOut(1000);
  $('.project-pic').fadeIn(100);
});

$('#show-details').click(function(event){
  event.stopPropagation();  
});

  
 
$('#contact-submit').click(function(e) {
  $('#contact_name, #contact_email, #contact_phone, #contact_message').each(function() {
    if ($(this).val().length == 0) {
      $(this).css('border', '2px solid red');
      e.preventDefault();
    }
  });
});

$('#order-submit').click(function(e) {
  $('#order_name, #order_email, #order_phone, #order_message').each(function() {
    if ($(this).val().length == 0) {
      $(this).css('border', '2px solid red');
      e.preventDefault();
    }
  });
});
