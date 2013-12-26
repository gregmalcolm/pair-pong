class EmberApp.IndexController extends Ember.Controller
  actions:
    create: ->
      @transitionToRoute('exercises.new')
