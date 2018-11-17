function parallax_height() {
  var scroll_top = $(this).scrollTop();
  var header_height = $(".parallax__content").outerHeight();
  $(".container").css({ "margin-top": header_height });
  $(".parallax").css({ height: header_height - scroll_top });
}

$('.parallax__content').height($('body').height() - 60);
parallax_height();

$(window).scroll(function() {
  parallax_height();
});
$(window).resize(function() {
  parallax_height();
});
