$ ->
  $(".searchable").multiSelect
    selectableHeader: "<input type='text' class='search-input span12' autocomplete='off' placeholder='Search'>"
    afterInit: (ms) ->
      that = this
      $selectableSearch = that.$selectableUl.prev()
      selectableSearchString = "#" + that.$container.attr("id") + " .ms-elem-selectable:not(.ms-selected)"
      that.qs1 = $selectableSearch.quicksearch(selectableSearchString).on("keydown", (e) ->
        if e.which is 40
          that.$selectableUl.focus()
          false
      )
