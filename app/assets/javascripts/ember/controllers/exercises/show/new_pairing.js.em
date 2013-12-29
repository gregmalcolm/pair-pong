class EmberApp.ExercisesShowNewPairingController extends Ember.ObjectController
  needs: ["exercisesShow"]
  repository: ""
  inviteMessage: "Care to pair on kata programming exercise with me?"
  recipient: ""

  actions:
    sendInvite: ->
      attrs =
        exercise: @controllers.exercisesShow.content
        github_repository: @repository
        invite_message: @inviteMessage
        recipient: @recipient
      invitation = @store.createRecord('invitation', attrs)
      invitation.save().then(@didSave.bind(@), @didReject.bind(@))

  didSave: (invitation) ->
    console.log "Done"

  didReject: (reason) ->
    console.log "Save failed"
    console.error reason
