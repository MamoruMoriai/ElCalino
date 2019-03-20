$(function(){
  $('.menu_data').hide();
  $('.category_list').click(function(){
    console.log($(this).data('id'));
    category = $(this).data('id');
    cate = category + 1;
    console.log(cate);
    if ($('.menu_data').data('id') == cate)
      $('.menu_data').slideToggle();
  });
});


