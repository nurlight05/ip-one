$(document).ready(function(){
	$(".toUp_btn").click(function() {
		$("html, body").animate({ scrollTop: 0 }, "slow");
		return false;
	});
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
	 $('.main_slider').slick({
	    slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		dots: true,
		fade: true,
		autoplay: true,
		autoplaySpeed: 5000
    });
	lightGallery(document.getElementById('lightgallery'));
	lightGallery(document.getElementById('video-gallery'));
	new WOW().init();
})