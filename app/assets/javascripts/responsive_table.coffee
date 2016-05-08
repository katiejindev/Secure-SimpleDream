responsiveTableMain = ->

  $('table.responsive-table tbody tr').click ->
    document.location = $(this).data('href')

$(document).ready(responsiveTableMain)
$(document).on('page:load', responsiveTableMain)
