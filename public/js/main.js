$(document).ready(function(){
	$('.question h4').click(function(){
		if($(this).children('.q_btn').hasClass('change')){
			$(this).children('.q_btn').removeClass('change');
			$(this).next('.question_text').slideUp();
		} else {
			$(this).children('.q_btn').addClass('change');
			$(this).next('.question_text').slideDown();
		}
	});
	$('.minus').click(function () {
		var $input = $(this).parent().find('input');
		var count = parseInt($input.val()) - 1;
		count = count < 1 ? 1 : count;
		$input.val(count);
		$input.change();
		return false;
	});
	$('.plus').click(function () {
		var $input = $(this).parent().find('input');
		$input.val(parseInt($input.val()) + 1);
		$input.change();
		return false;
	});
	$('.click').on('click', function(){
      var link = $(this).attr('href');
      $(''+link).fadeIn();
      $('.modal .close_btn').on('click', function(){
          $(this).parents('.modal').fadeOut();
          return false;
      });
      return false;
   });
	$('.country_list > li p').click(function(){
		$(this).next('.city_list').slideToggle();
	});
	$('.show_btn').click(function(){
		$(this).parent('.show_all').prev('.comment_hidden-block').slideToggle();
	});
	$('.nav-link').click(function(){
		$('.nav-item').removeClass('active');
		$(this).parent('.nav-item').addClass('active');
	});
	lightGallery(document.getElementById('lightgallery'));
	lightGallery(document.getElementById('video-gallery'));
});