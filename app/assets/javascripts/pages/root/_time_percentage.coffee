$ ->

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

