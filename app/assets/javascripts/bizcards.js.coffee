# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  name = $("#upload_button").click (event) -> #commit is name of form evens "submitting"
    event.preventDefault()

    # Here we grab the title and content_field
    # and we store as variables
    $firstname = $('#bizcard_firstname')
    $lastname = $('#bizcard_lastname')
    $company = $('#bizcard_company')
    $avatar = $('#bizcard_avatar')
    console.log $avatar.val(), $company.val(), $firstname.val(), $lastname.val()

    # now we insert the value into a hash called bizcard
    bizcard = {
      avatar: $avatar.val()
      company: $company.val()
      firstname: $firstname.val()
      lastname: $lastname.val()
    }
    # debugger
    # Make a post request with the question that was submitted
    #done wartet darauf bis die create methode fertig ist aber die wird nie fertig wenn man nicht redirected oder rendered
    $.post( "/bizcards", {bizcard: bizcard}).done (data) ->
      # debugger
      console.log data
      # optional $("#questions").empty()
      $(".bizcard").append("<div>" + data["avatar"] + "</div>")

    $firstname.val("")
    $lastname.val("")
    $company.val("")
    $avatar.val("")

