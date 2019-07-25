import bootstrap from 'bootstrap';
import $ from 'jquery';
import anime from 'animejs';
import Slideout from 'slideout';
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

export {
    $,
    bootstrap,
    anime,
    slick,
    init,
    Slideout
}