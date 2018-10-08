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
//= require jquery_ujs
//= require_tree .


$(window).on('load', function() {
  $(window).scroll(function() {
    $('.fade-in').each(function() {
      var POS, scroll, windowHeight;
      POS = $(this).offset().top;
      scroll = $(window).scrollTop();
      windowHeight = $(window).height();
      if (scroll > POS - windowHeight + windowHeight / 2.0) {
        $(this).css('opacity', '1');
      } else {
        $(this).css('opacity', '0');
      }
    });
  });
});


/*
 * Back-toTop button (Smooth scroll)
 */

$(document).on('click', '.back-to-top', function() {
  $.smoothScroll({
    easing: 'easeOutExpo',
    speed: 500
  });
});

$(function() {
  $('a').each(function() {
    if (window.location.pathname.indexOf($(this).attr('href')) === 0) {
      $(this).parent().addClass('active');
    }
  });
});
