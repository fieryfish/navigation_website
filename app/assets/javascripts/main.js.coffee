# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  #search form autocomplete of jquery ui
  $('#search').autocomplete
    source: "/search_suggestions"
    #message用于取消提示,提示会导致页面乱掉
    messages: {
        noResults: '',
        results: () -> 
    }

  # change the drop-down list of the autocomplete of nav search
  .data( "ui-autocomplete" )._renderItem = ( ul, item ) -> 
    #alert(item)
    #alert(item.name)
    #alert(item.url)
    return $("<li><a href="+item.url+ ">" + item.name+"</a></li>").appendTo(".ui-autocomplete")

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
