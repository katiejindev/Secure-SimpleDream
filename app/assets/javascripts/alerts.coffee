alertsMain = ->
  $('.controls div.delete').click ->
    $('.controls .window-mask').toggleClass('show')
    $('.controls .delete-confirm').toggleClass('show')

  $('.controls .delete-confirm div.cancel').click ->
    $('.controls .window-mask').toggleClass('show')
    $('.controls .delete-confirm').toggleClass('show')

$(document).ready(alertsMain)
$(document).on('page:load', alertsMain)
