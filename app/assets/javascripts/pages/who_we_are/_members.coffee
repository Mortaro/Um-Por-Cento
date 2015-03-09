$ ->

  $('.members li').not('.placeholder').click ->
    $('.members-expanded').show()
    $("[data-index=#{$(@).attr('data-index')}]").fadeIn()

  $('.members-expanded a[href="#"]').click ->
    $(@).closest('li').fadeOut()
    $('.members-expanded').fadeOut()
    false
