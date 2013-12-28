jQuery ->
  $("textarea").on "focus keyup", (e) ->
    if e.keyCode is 9
      $(@).select()
