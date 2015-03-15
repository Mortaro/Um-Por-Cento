$ ->

  $('.text-section a[href*="#"]').click ->
    $('.dotted-section').slideUp()
    target = $($(@).attr('href'))
    target.slideDown ->
      $('html, body').animate scrollTop: target.offset().top
    false

  $('.text-section ul').waypoint ->
    $('.text-section ul').delay(2000).addClass 'active'
  , ->
    $('.text-section ul').removeClass 'active'
