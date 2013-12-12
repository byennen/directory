$ ->
  $(".search-keyword").click ->
    term = $("input#term").val()
    window.location.href="/companies?search[term]=#{term}"