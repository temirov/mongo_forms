# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

hideFormOnClick = ->
  $('body').on "click", 'button#cancel_button', ->
    showOnlyLink()

showOnlyLink = ->
  $("#new_relative_form").hide()
  $("#new_relative_link").show()

$ ->
  showOnlyLink()
  hideFormOnClick()

