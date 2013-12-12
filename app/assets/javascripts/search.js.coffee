$ ->
  $(".search-keyword").click ->
    term = $("input#term").val()
    window.location.href="/companies?search[term]=#{term}"
  $(".search-cat").click ->
    term = $(this).closest('.span12').find('input[type=text]').val()
    category_type = $(this).data("cat")
    window.location.href="/companies?search[term]=#{term}&search[cat]=#{category_type}"
  $(".search-state").click ->
    state = $("input#state").val()
    window.location.href="/companies?search[state]=#{state}"
  $(".search-country select").change ->
    country=$(this).val()
    window.location.href="/companies?search[country]=#{country}"