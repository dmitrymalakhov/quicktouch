$(document).ready(function(){
  var currentPosition = 0;
  var slideWidth = $('.slidesContainer').width();
  var slides = $('.slide');
  var numberOfSlides = slides.length;
  var revers = false;

  $(".images").carouFredSel();

  // Remove scrollbar in JS
  $('.slidesContainer').css('overflow', 'hidden');

  // Wrap all .slides with #slideInner div
  slides
    .wrapAll('<div class="slideInner"></div>')
    // Float left to display horizontally, readjust .slides width
	.css({
      'float' : 'left',
      'width' : slideWidth
    });

  // Set #slideInner width equal to total width of all slides
  $('.slideInner').css('width', slideWidth * numberOfSlides);
  // Hide left arrow control on first load

  function slide(position, callback) {
      position = (typeof(position) == 'undefined') ? 0 : position;
      if(position==0) {
        revers = false;
      } else {
        if(position==numberOfSlides-1)
          revers = true;
      }

      currentPosition = (revers) ? currentPosition-1 : currentPosition+1;

      $('.slideInner').animate({
        'marginLeft' : slideWidth*(-currentPosition)
      });

      callback = function() {
        return position;
      };
  }

  function looper() {
    slide(currentPosition, currentPosition);
    setTimeout(looper, 7000);
  }

  setTimeout(looper, 7000);
});