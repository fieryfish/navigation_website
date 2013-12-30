# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  #search form autocomplete of jquery ui
  $('#search').autocomplete
    source: "/search_suggestion"
    messages: {
        noResults: '',
        results: () -> 
    }


  # alert msg of rails and bootstrap
  $(".alert").alert()


  #if window.ActiveXObject
    #xhr = new ActiveXObject("Microsoft.XMLHTTP")
  #else if window.XMLHttpRequest
    #xhr = new XMLHttpRequest()
  #else
    #throw new Error("Ajax is not supported by this browser")

  #xhr.onreadystatechange = () -> 
    #if (this.readyState == 4)
      #if this.status >= 200 and this.status < 300
        #$("#asd").html("aaaaaaaaaa")

  #xhr.open('GET','/main/show')
  #xhr.send('132123send')
  #
  #$("#asd").load("/main/show",$(this)
  #)
  #
  #$.get(
    #"/main/show",
    #$(this).serialize()
  #)
  #$("#asd").load(
    #"/main/show","#{$("#asd")}= #{$("#asd").show()}"
  #)
  #
  #$.ajax
    #url: '/main/show',
    #data:
      #name: "John"
    #dataType: "json"
    #type: 'GET',
    #success: (data) ->
      #alert(data)
      ##console.log(data)
