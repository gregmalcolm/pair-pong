Pair Pong
=========

Turn based remote pairing utilizing github.

Great for hooking up with new pairs, working on code katas and suchlike.

Currently I'm just prototyping, so don't expect niceties like test suites...

Setup
=====


Github API key environment variables
------------------------------------

This app makes use of Github API. The Rails environment won't start unless you
configure a couple of environment variables with the github api keys:

```
export GITHUB_KEY=mysecretgithubkey123
export GITHUB_SECRET=mysecretgithubsecret12341234123412341234%
```

Bundle/rakery
-------------

```
bundle
rake db:create
rake db:migrate
rake db:seed
```

