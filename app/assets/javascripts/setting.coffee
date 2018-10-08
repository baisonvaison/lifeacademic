$(window).on 'load', ->
  # fade-in
  $(window).scroll ->
    $('.fade-in').each ->
      POS = $(this).offset().top
      #fade-inがついている要素の位置
      scroll = $(window).scrollTop()
      #スクロール一
      windowHeight = $(window).height()
      #ウィンドウの高さ
      if scroll > POS - windowHeight + windowHeight / 2.0
        $(this).css 'opacity', '1'
      else
        $(this).css 'opacity', '0'
      return
    return
  return

###
# Back-toTop button (Smooth scroll)
###

$(document).on 'click', '.back-to-top', ->
  # Smooth Scroll プラグインを実行
  $.smoothScroll
    easing: 'easeOutExpo'
    speed: 500
  return
$ ->
  $('a').each ->
    if window.location.pathname.indexOf($(this).attr('href')) == 0
      $(this).parent().addClass 'active'
    return
  return
