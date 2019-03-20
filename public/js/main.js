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
	if($('#converter').length > 0){
		var converter = document.getElementById("converter");
		var sticky = converter.offsetTop;
		var header = document.getElementById("header_menu").offsetHeight;
		$(window).scroll(function(){
			if (window.pageYOffset > sticky + header) {
		   		converter.classList.add("sticky");
			} else {
				converter.classList.remove("sticky");
			}
		});
	}
	var EqualSize = $('.shop_list-img');
	var BorderSize = EqualSize.css('borderWidth')
	$('.shop_list-img').css({
	    'height': EqualSize.width() + parseInt(BorderSize) * 2 + 'px'
	});
	$(window).on('resize', function(){
		$('.shop_list-img').css({
		    'height': EqualSize.width() + parseInt(BorderSize) * 2 + 'px'
		});
	});
	$('.shop_list a').on('mouseover', function(){
		$(this).find('span').slideDown(200);
		$('.shop_list a').on('mouseleave', function(){
			$(this).find('span').slideUp(200);
		});
	});
	$('*[data-href]').on('click', function() {
        window.location = $(this).data("href");
    });
    $('.search_btn').click(function(){
		if($('.search_form').hasClass('search_expand')){
			$('.search_form input').fadeOut('fast');
			$('.search_form').removeClass('search_expand');
		} else {
    		$('.search_form input').fadeIn();
    		$('.search_form').addClass('search_expand');
		}
    	return false;
    });
	lightGallery(document.getElementById('lightgallery'));
	lightGallery(document.getElementById('video-gallery'));
	$('.hello-slider').css('display', 'block');
	new WOW().init();
})