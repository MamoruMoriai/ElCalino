$(function(){
  $('.menu_data').hide();
  $('.category_list').click(function(){
    var num = $(this).data('id');
    var result = $('.menu_data[data-id='+num+']');
    result.slideToggle();
  });
});
