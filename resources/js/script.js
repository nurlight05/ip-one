import bootstrap from 'bootstrap';
import $ from 'jquery';
import anime from 'animejs';
import slick from 'slick-carousel';
import slick_css from 'slick-carousel/slick/slick.css';
import slick_theme_css from 'slick-carousel/slick/slick-theme.css';

var init = function(f) {
    try {
        f();   
    } catch (error) {
        throw error;    
    }
}

var menu_items = [];

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
                $(clickSelector).parent().removeClass('active');
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

    menu_items.push(menu);

    $(clickSelector).hover(function() {
        menu_items.forEach(element => {if(menu != element) element.unExpandMenu()});
        if(!menu.expand) {
            menu.expandMenu();
        }
    });

    return menu;
}

$(document).mousemove(function(e){
    if($(e.target).parents('div#main_header_menu').length < 1) {
        menu_items.forEach(element => element.unExpandMenu());
    }
});

export {
    $,
    bootstrap,
    anime,
    initExpandMenu,
    slick,
    init
}