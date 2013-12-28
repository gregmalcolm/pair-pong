EmberApp.Router.map ->
  @resource 'exercises', ->
    @route 'new'
    @resource 'exercises.show', { path: ':exercise_id' }, ->
      @route 'new_pairing'
