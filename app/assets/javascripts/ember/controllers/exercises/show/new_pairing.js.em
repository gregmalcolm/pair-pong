class EmberApp.ExercisesShowNewPairingController extends Ember.ObjectController
  inviteMessage: "Care to pair on kata programming exercise with me?"
  recipient: ""

  actions:
    sendInvite: ->
      invitation =
        inviteMessage: @inviteMessage
        recipient: @recipient
      content = @store.createRecord('invitation', invitation)
      content.save().then(@didSave.bind(@), @didReject.bind(@))

  didSave: (invitation) ->
    console.log "Done"

  didReject: (reason) ->
    console.error "Save failed because #{reason}"
