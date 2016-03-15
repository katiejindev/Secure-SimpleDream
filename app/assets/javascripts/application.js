// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require owl.carousel
//= require owl.navigation
//= require owl.lazyload
//= require owl.autoplay
//= require owl.animate
//= require owl.support
//= require owl.autorefresh
//= require owl.hash
//= require jquery_ujs
//= require turbolinks
//= require_self
//= require_tree .

//Initialization
function document_init() {
  if ($("#custom-owl-pagination").length) {
    $(".main-slider").owlCarousel({
      dotsContainer: "#custom-owl-pagination",
      items: 4,
      margin: 30,
      autoplay: true,
      autoplayTimeout: 6000,
      smartSpeed: 3000,
      loop: true,
      center: true,
      lazyLoad: false,
      responsive: {
        0:{
          items: 1,
          margin: 0
        },
        600:{
          items: 3,
          margin: 15
        },
        1200: {
          items: 4,
          margin: 30
        }
      }
    });
  }
  $(".main-slider").owlCarousel({
    items: 4,
    margin: 30,
    autoplay: true,
    autoplayTimeout: 6000,
    smartSpeed: 3000,
    loop: true,
    center: true,
    lazyLoad: false,
    responsive: {
      0:{
        items: 1,
        margin: 0
      },
      600:{
        items: 3,
        margin: 15
      },
      1200: {
        items: 4,
        margin: 30
      }
    }
  });

  $(".products-slider").owlCarousel({
    items: 1,
    margin: 30,
    autoplay: true,
    autoplayTimeout: 10000,
    smartSpeed: 3000,
    loop: true,
    center: true,
  });
};

$(document).ready(document_init);
$(document).on('page:load', document_init);
