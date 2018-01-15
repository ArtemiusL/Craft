import '../stylesheets/styles.scss';
import '../../node_modules/swiper/dist/css/swiper.min.css';
import PictureFill from 'picturefill';
import Swiper from 'swiper';
var mySwiper = new Swiper('.swiper-container', {
 // Optional parameters
    direction: 'horizontal',
    loop: true,

    // If we need pagination
    pagination: {
      el: '.swiper-pagination',
    },

    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },

    // And if we need scrollbar
    scrollbar: {
      el: '.swiper-scrollbar',
    },	
 });
console.log(Swiper);
console.log('Global.js file has imported');
