# for more details see: http://emberjs.com/guides/models/defining-models/

PairPong.Exercise = DS.Model.extend
  name: DS.attr 'string'
  kataLink: DS.attr 'string'
  language: DS.attr 'string'
  instigatorId: DS.attr 'number'
  turnId: DS.attr 'number'
  completedAt: DS.attr 'date'
