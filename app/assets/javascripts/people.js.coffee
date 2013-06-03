# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("#city_id").select2 {
    minimumInputLength: 3,
    allowClear: true,
    placeholder: "Bota qualquer coisa ai"
  }

(($) ->
  "use strict"
  $.extend $.fn.select2.defaults,
    formatNoMatches: ->
      "Nenhum resultado encontrado"

    formatInputTooShort: (input, min) ->
      n = min - input.length
      "Digite pelo menos " + n + ((if n is 1 then " caracter" else " caracteres"))

    formatInputTooLong: (input, max) ->
      n = input.length - max
      "Remova " + n + ((if n is 1 then " caracter" else " caracteres"))

    formatSelectionTooBig: (limit) ->
      "Seleção permite apenas " + limit + ((if limit is 1 then " item" else " itens"))

    formatLoadMore: (pageNumber) ->
      "Carregando resultados..."

    formatSearching: ->
      "Pesquisando..."

) jQuery