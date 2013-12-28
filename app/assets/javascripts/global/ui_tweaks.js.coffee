jQuery ->
  $("textarea").on "change focus keyup", (e) ->
    if e.keyCode is 9
      $(@).select()
