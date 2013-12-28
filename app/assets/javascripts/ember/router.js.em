EmberApp.Router.map ->
  @resource 'exercises', ->
    @route('new')
  @resource 'pairings', ->
    @route('new')

