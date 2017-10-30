# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#new_restaurant").on("ajax:success", (e, data, status, xhr) ->
    $("#new_restaurant").append xhr.responseText
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#new_restaurant").append "<p>ERROR</p>"

$(document).ready ->
  $("#edit_restaurant").on("ajax:success", (e, data, status, xhr) ->
    $("#edit_restaurant").replace xhr.responseText
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#edit_restaurant").replace "<p>ERROR</p>"
