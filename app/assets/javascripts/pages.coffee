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

$.fn.waypoint = (down, up) ->
  that = $(@)
  return that if that.size() == 0
  $(document).scroll ->
    top = $(document).scrollTop() + $(window).height()
    end = that.offset().top + (that.height()/2)
    if top > end then down() else up()
  that
