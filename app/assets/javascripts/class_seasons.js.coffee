# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ($) ->
  $("#date").mask "99/99/9999"
  $("#telephone").mask "(99) 99999999"
  $("#tin").mask "99-9999999"
  $("#ssn").mask "999-99-9999"
  $("#cpf").mask "999.999.999-99"
  $("#year").mask "9999"

jQuery ($) ->
  $.mask.definitions["~"] = "[+-]"
  $("#eyescript").mask "~9.99 ~9.99 999"  