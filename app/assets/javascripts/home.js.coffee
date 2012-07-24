# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# Make selected language "TH" not clickable and remove link
$(document).ready ->
  if window.location.href.indexOf("th") > -1
    $("#th").addClass "language-current"
    $("#en").removeClass "language-current"
    $("#th").click (event) ->
      event.preventDefault()

# Make selected language "EN" not clickable and remove link
$(document).ready ->
  if window.location.href.indexOf("en") > -1
    $("#en").addClass "language-current"
    $("#th").removeClass "language-current"
    $("#en").click (event) ->
      event.preventDefault()

# Make the TH language link on the EN home page show as "/" instead of "/th/home"
$(document).ready ->
  return $("a[href*=\"/th/home\"]").attr("href", "/")

$(document).ready ->
  return $("a[href*=\"/th/signup/new\"]").attr("href", "/th/signup")

$(document).ready ->
  return $("a[href*=\"/en/signup/new\"]").attr("href", "/en/signup")