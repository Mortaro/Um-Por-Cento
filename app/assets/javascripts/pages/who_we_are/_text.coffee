$ ->

  $('.text-section ul a').click ->
    $('.dotted-section').slideUp()
    target = $($(@).attr('href'))
    target.slideDown ->
      $('html, body').animate scrollTop: target.offset().top
    false

  $('.text-section ul').waypoint ->
    $('.text-section ul').addClass 'active'
  , ->
    $('.text-section ul').removeClass 'active'