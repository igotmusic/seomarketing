# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).ready ->

# Make selected language "EN" not clickable and remove link
  if window.location.href.indexOf("/en") > -1
    $("#th").removeClass "language-current"
    $("#en").addClass "language-current"
    $("#en").click (event) ->
      event.preventDefault()

  # Make selected language "TH" not clickable and remove link
  if window.location.href.indexOf("/th") > -1
    $("#en").removeClass "language-current"
    $("#th").addClass "language-current"
    $("#th").click (event) ->
      event.preventDefault()


# Make the TH language link on the EN home page show as "/" instead of "/th/home"

  return $("a[href*=\"/th/home\"]").attr("href", "/")


  return $("a[href*=\"/th/signup/new\"]").attr("href", "/th/signup")


  return $("a[href*=\"/en/signup/new\"]").attr("href", "/en/signup")