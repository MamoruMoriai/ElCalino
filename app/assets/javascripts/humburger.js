$(function() {
  $('.toggle').click(function() {
    $(this).toggleClass("active");
    if($(this).hasClass('active')) {
      $('.hum_nav').addClass('active');
    } else {
      $('.hum_nav').removeClass('active');
    }
  });
});
