$(document).on 'ready page:load', ->
  $('#comumcc').waypoint ->
    $('#comumcc').addClass('active')
  , ->
    $('#comumcc').removeClass('active')
