$(document).on 'ready page:load', ->

  $('#intro-slider').height($(window).height())

  #$('.slide-dots').mousemove (e) ->
  #  amountMovedX = (e.pageX * -1 / 6)
  #  amountMovedY = (e.pageY * -1 / 6)
  #  $(@).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px')
