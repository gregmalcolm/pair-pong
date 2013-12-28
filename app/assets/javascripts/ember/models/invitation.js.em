class EmberApp.Invitation extends DS.Model
  exercise: DS.belongsTo('exercise')
  github_repository: DS.attr('string')
  invite_message: DS.attr('string')
  recipient: DS.attr('string')
