$(document).on 'ready page:load', ->

  $('[href=#navigation]').click ->
    navigation = $(@).closest('#navigation')
    if $(@).hasClass('active')
      $(@).removeClass 'active'
      $('#blur').fadeOut()
      if navigation.css('float') == 'left'
        navigation.find('nav').slideUp()
      else
        navigation.animate left: "-320px"
      navigation.find('nav ul:last-of-type a').css('margin', '0')
    else
      $(@).addClass 'active'
      if navigation.css('float') == 'left'
        navigation.find('nav').slideDown ->
          navigation.find('nav ul:last-of-type a').css('margin', '0 5px')
      else
        $('#blur').fadeIn()
        navigation.animate left: '0px', ->
          navigation.find('nav ul:last-of-type a').css('margin', '0 5px')
    false
  .addClass('active').delay(500).click()

  $('#navigation nav a').hover ->
    $('#bird span:first-of-type').stop().fadeOut('slow')
  , ->
    $('#bird span:first-of-type').stop().fadeIn('slow')

  $('#intro-slider').height($(window).height())

  $('#time-percentage').waypoint ->
    $('#clock').addClass('active')
    $('#time-percentage').addClass('active')
    $('#time-percentage em:nth-child(1)').addClass('active')
    setTimeout ->
      $('#time-percentage em:nth-child(1)').removeClass('active')
      $('#time-percentage em:nth-child(2)').addClass('active')
      setTimeout ->
        $('#time-percentage em:nth-child(2)').removeClass('active')
        $('#time-percentage em:nth-child(3)').addClass('active')
        setTimeout ->
          $('#time-percentage em:nth-child(3)').removeClass('active')
        , 2000
      , 2000
    , 2000
  , ->
    $('#clock').removeClass('active')
    $('#time-percentage').removeClass('active')
    $('#time-percentage em').removeClass('active')

  $('#comumcc').waypoint ->
    $('#comumcc').addClass('active')
  , ->
    $('#comumcc').removeClass('active')

  $('.slide-dots').mousemove (e) ->
    amountMovedX = (e.pageX * -1 / 6)
    amountMovedY = (e.pageY * -1 / 6)
    $(@).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px')

$.fn.waypoint = (down, up) ->
  that = $(@)
  return that if that.size() == 0
  $(document).scroll ->
    top = $(document).scrollTop() + $(window).height()
    end = that.offset().top + (that.height()/2)
    if top > end then down() else up()
  that
