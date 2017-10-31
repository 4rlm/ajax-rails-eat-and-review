# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#new_review").on("ajax:success", (e, data, status, xhr) ->
    $("#new_review").append xhr.responseText
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#new_review").append "<p>ERROR</p>"


$(document).ready ->
  $("#edit_review").on("ajax:success", (e, data, status, xhr) ->
    $("#edit_review").append xhr.responseText
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#edit_review").append "<p>ERROR</p>"
