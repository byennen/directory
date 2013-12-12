update_print_total = ->
  total = 0
  $("#print_selections input:checked").each ->
    total += 75.00

  $("#print_selections_cost").val "$" + total.toFixed(2)

$ ->
  $("#print_selections :checkbox").click (event) ->
    update_print_total()

update_online_total = ->
  total = 0
  $("#online_selections input:checked").each ->
    total += 400.00

  $("#online_selections_cost").val "$" + total.toFixed(2)

$ ->
  $("#online_selections :checkbox").click (event) ->
    update_online_total()

