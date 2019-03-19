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
	$('#num_of_bill, #ex_rate').bind('keyup change',function(){
		var numOfBill = document.getElementById('num_of_bill').value;
		var exRate = document.getElementById('ex_rate').value;
		var sumOfBill = document.getElementById('sum_of_bill').value;
		sumOfBill = exRate * numOfBill;
		document.getElementById('sum_of_bill').value = sumOfBill;
	});
	$(window).on('load scroll',function(){ 
	    if ($(this).scrollTop() >= '300') {
	        $('.toUp_btn').show();
	    }
	    else  {$('.toUp_btn').hide();}
	});
	$(window).scroll(function(){
		var converter = document.getElementById("converter");
		var sticky = converter.offsetTop;
		if (window.pageYOffset > sticky) {
	   		converter.classList.add("sticky");
		} else {
			converter.classList.remove("sticky");
		}
	});
	$('*[data-href]').on('click', function() {
        window.location = $(this).data("href");
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
})