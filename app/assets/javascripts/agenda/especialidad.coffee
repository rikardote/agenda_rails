# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  $.datepicker.setDefaults $.datepicker.regional['es-MX']
  $('.datepicker').datepicker
    dateFormat: 'yy-mm-dd'
    changeMonth: true
    changeYear: true
    firstDay: 1
