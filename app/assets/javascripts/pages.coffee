$ ->

  $('#contact form').submit ->
    btn = $(@).find('input[type=submit]')
    btn.val(btn.attr('data-message')).delay(2000)

  $('#store').height($(window).height())

  $('#store h1').css('right', '-500px').animate right: 0, 'slow'
  $('#store h2').delay(300).css('right', '-500px').animate right: 0, 'slow'

  $('.construction').click -> false

  $('.triangle-top').waypoint ->
    $('.circles-triangle').addClass 'active'
  , ->
    $('.circles-triangle').removeClass 'active'

  $('[data-soon]').each ->
    $(@).attr('data-original', $(@).html())
    $(@).hover ->
      $(@).text($(@).attr('data-soon')).addClass('active')
    , ->
      $(@).html($(@).attr('data-original')).removeClass('active')
    $(@).click -> false

  $('[href=#navigation]').click ->
    navigation = $(@).closest('#navigation')
    if $(@).hasClass('active')
      console.log $(@)
      $(@).removeClass 'active'
      console.log $(@)
      $('#blur').fadeOut()
      if navigation.css('float') == 'left'
        navigation.find('nav').slideUp()
      else
        navigation.animate left: "-320px"
      navigation.find('nav ul:last-of-type a').css('margin', '0')
    else
      $(@).addClass 'active'
      if navigation.css('float') == 'left'
        $('html, body').animate scrollTop: 0
        navigation.find('nav').slideDown ->
          navigation.find('nav ul:last-of-type a').css('margin', '0 5px')
      else
        $('#blur').fadeIn()
        navigation.animate left: '0px', ->
          navigation.find('nav ul:last-of-type a').css('margin', '0 5px')
    console.log 'spell'
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
    if $('#navigation').css('float') == 'left'
      end = that.offset().top + (that.height()/2)
    else
      end = that.offset().top + (that.height())
    if top > end then down() else up()
  $(document).scroll()
  that
