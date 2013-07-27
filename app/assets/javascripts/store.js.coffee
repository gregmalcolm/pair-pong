# http://emberjs.com/guides/models/defining-a-store/

PairPong.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create()

