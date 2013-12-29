class EmberApp.ExercisesNewController extends Ember.ObjectController
  name: null
  kataDetails: """Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”

Details:
  http://c2.com/cgi/wiki?FizzBuzzTest"""

  actions:
    saveAndContinue: ->
      exercise =
        name: @name
        kata_details: @kataDetails
      content = @store.createRecord('exercise', exercise)
      content.save().then(@didSave.bind(@), @didReject.bind(@))

  didSave: (exercise) ->
    @transitionToRoute("exercises.show.new_pairing", exercise.id)

  didReject: (reason) ->
    console.log "Save failed"
    console.error reason
