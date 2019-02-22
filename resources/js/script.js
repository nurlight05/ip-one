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
                anime({
                    targets: menuSelector,
                    translateY: '100%',
                    easing: 'easeInOutExpo',
                    duration: 500
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
                anime({
                    targets: menuSelector,
                    translateY: '-100%',
                    easing: 'easeInOutExpo',
                    duration: 500
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

export {
    $,
    bootstrap,
    anime,
    initExpandMenu,
    slick,
    init
}