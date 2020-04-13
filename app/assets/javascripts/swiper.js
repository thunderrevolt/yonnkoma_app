$(document).ready(function () {
  var mySwiper6 = new Swiper ('.swiper-container', {
    autoplay: {
      delay: 4000,
    },
    
    loop: true,
    
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
    
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  })
});