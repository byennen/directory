$ ->
  # $(".searchable").multiSelect
  #   selectableHeader: "<input type='text' class='search-input span12' autocomplete='off' placeholder='Search'>"
  #   afterInit: (ms) ->
  #     that = this
  #     $selectableSearch = that.$selectableUl.prev()
  #     selectableSearchString = "#" + that.$container.attr("id") + " .ms-elem-selectable:not(.ms-selected)"
  #     that.qs1 = $selectableSearch.quicksearch(selectableSearchString).on("keydown", (e) ->
  #       if e.which is 40
  #         that.$selectableUl.focus()
  #         false
  #     )

  $("#metal_service_center_or_distributor_checkbox").click ->
    $("#equipment_sales_categories").toggle()

  $(".item-row")
    .mouseenter ->
      $(this).find('.sub-list').fadeIn()
    .mouseleave ->
      $(this).find('.sub-list').fadeOut()
  
  $(".left-list .item").click (e) ->
    if $(@).hasClass('disabled')
      e.preventDefault()
    else
      $target = $(@).closest('.multiple-nested-list').find('.right-list')
      id = $(@).data("id")
      text = $(@).text()
      $(@).addClass('disabled')
      $target.append("<div class='item' data-id=#{id}>#{text}</div>")
      $element = $(@).closest('.multiple-nested-list')
      updateValue($element)

  $(".right-list").on "click", ".item", ->
    id = $(@).data("id")
    $(@).closest('.multiple-nested-list').find(".item[data-id=#{id}]").removeClass('disabled')
    $element = $(@).closest('.multiple-nested-list')
    $(@).remove()
    updateValue($element)


  updateValue=(element) ->
    inputs = element.find('.select-ids')
    inputs.html("")
    $(element).find(".right-list .item").each -> 
      html = "<input multiple='multiple' name=#{inputs.data("name")} type='hidden' value='#{$(this).data('id')}'>"
      inputs.append(html)