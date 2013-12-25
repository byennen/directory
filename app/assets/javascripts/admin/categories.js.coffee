$ ->
  id=$("#company_id").val()
  $(".left-list").on 'click', '.item', ->
    cat = $(@).closest(".multiple-nested-list").data("cat")
    ids = []
    $(@).closest(".multiple-nested-list").find(".right-list .item").each ->
      ids.push($(this).data('id'))
    updateCategories(ids, cat)
  $(".right-list").on 'click', '.item', ->
    cat = $(@).closest(".multiple-nested-list").data("cat")
    ids = []
    that = this
    $(@).closest(".multiple-nested-list").find(".right-list .item").each ->
      ids.push($(this).data('id')) unless this == that
    updateCategories(ids, cat)

  updateCategories = (ids, cat) ->
    data = {cat: cat, ids: ids, company_id: id}
    $.get("/admin/companies/update_categories", data)