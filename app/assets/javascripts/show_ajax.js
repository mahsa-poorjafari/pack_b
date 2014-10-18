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

$('#contact-box').click(function(){
  if ($('.contact-menu').css('width') == '51px') 
  {
    $('.contact-menu').animate({width:'100%'},"slow");  
    $('#contact-box #contact-btn-text').css('margin-top', '43%');
    $('.contact-menu i#contact-arrow').removeClass('font-icon-arrow-simple-left');
    $('.contact-menu i#contact-arrow').addClass('font-icon-arrow-simple-right');
    
  }
  else
    {
    $('.contact-menu').animate({width:'4%'},"slow");  
    $('.contact-menu i#contact-arrow').removeClass('font-icon-arrow-simple-right');
    $('.contact-menu i#contact-arrow').addClass('font-icon-arrow-simple-left');
    $('#contact-box #contact-btn-text').css('margin-top', '70%');
  }
});

