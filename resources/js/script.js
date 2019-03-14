import bootstrap from 'bootstrap';
import $ from 'jquery';
import anime from 'animejs';
import slick from 'slick-carousel';
import slick_css from 'slick-carousel/slick/slick.css';
import slick_theme_css from 'slick-carousel/slick/slick-theme.css';

console.log(slick);

var init = function(f) {
    try {
        f();   
    } catch (error) {
        throw error;    
    }
}

var initExpandMenu = function(clickSelector, menuSelector) {
    var menu = {
        expand: false,

        expandMenu: function() {
            if(!this.expand) {
                $(clickSelector).parent().toggleClass('active');
                anime({
                    easing: 'easeOutExpo',
                    duration: 0,
                    targets: menuSelector,
                    translateY: '100%',
                    complete: function(anim) {
                        anime({
                            easing: 'easeOutExpo',
                            duration: 400,
                            targets: menuSelector,
                            opacity: '1',
                        });
                    }
                });

                this.expand = true;

                document.addEventListener('click', function(e) {
                    if(e.target.closest(menuSelector) === null && e.target.closest(clickSelector) == null) {
                        this.unExpandMenu();
                    }
                }.bind(this));
            }
        },

        unExpandMenu: function() {
            if(this.expand) {
                $(clickSelector).parent().toggleClass('active');
                anime({
                    easing: 'easeOutExpo',
                    duration: 400,
                    targets: menuSelector,
                    opacity: '0',
                    complete: function(anim) {
                        anime({
                            easing: 'easeOutExpo',
                            duration: 0,
                            targets: menuSelector,
                            translateY: '-100%',
                        });
                    }
                });

                this.expand = false;

            }
        },

        
        toggleMenu: function() {
            if(this.expand)
                this.unExpandMenu();
            else
                this.expandMenu();
        }
    };

    $(clickSelector).click(function() {
        menu.toggleMenu();
    });

    return menu;
}

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
});

export {
    $,
    bootstrap,
    anime,
    initExpandMenu,
    slick,
    init
}