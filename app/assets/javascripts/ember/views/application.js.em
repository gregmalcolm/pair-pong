class EmberApp.ApplicationView extends Ember.View
  didInsertElement: ->
    @controller.currentUserName = $("#current-user-name").val()
