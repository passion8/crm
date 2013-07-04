# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# $(".form-search").closest(".span9") = $dom_search

displayResult = (num)->
  $.ajax "/search" ,
    method: 'get'
    dataType: 'script'
    data: {q: num}

comma = 0
$(document).on  "keypress" , ".search-query" , (e)->
  event.preventDefault() if event.which >= 37 and event.which <= 40
  $this = $(this)
  if $this.val().split(",").length >= (comma + 1)
    displayResult($this.val())
    comma = comma + 1 


  # num = $this.val().replace(/,/g, '')
  # $this.val(num.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,"))
  
