TeeDub Labs
============

[![Build Status](https://travis-ci.org/moredip/tee-dub-labs.png?branch=master)](https://travis-ci.org/moredip/tee-dub-labs)

This is a strawman implementation of a community-maintained heroku-backed website. It's super-basic, and obviously the presentation is absolutely awful. The aim is to see how low-friction we can make community contributions to this kind of microsite.

There are two apps set up on Heroku, a [Staging app](http://tee-dub-labs---staging.herokuapp.com/) and a [Production app](http://tee-dub-labs.herokuapp.com/).
The Staging app should always reflect the latest and greatest on `master` in the github repo. To deploy what's on master to Production you need to run `script/deploy_to_prod`. For that script to complete successfully you need a `HEROKU_API_KEY` environment variable set for a heroku user who is a collaborator for the production app.

How Do I Contribute?
------
- Edit `projects.json`, and then submit a pull request.
- As soon as your pull request is pulled in you should see your change live on the [Staging app](http://tee-dub-labs---staging.herokuapp.com/). 
- Once you've confirmed the changes look good someone with the heroku API key needs to run `scripts/deploy_to_prod`. Once that's done your changes are live on the [Production app](http://tee-dub-labs.herokuapp.com/).

Of course, contributing improvements and enhancements to the app itself is also very much encouraged.

How does this work?
------

This github repo is configured to be [built with Travis CI](https://travis-ci.org/moredip/tee-dub-labs). Every time there is a new commit to the master branch travis runs a script which pushes the code to the [Staging app](http://tee-dub-labs---staging.herokuapp.com/) on Heroku. To deploy to Heroku you need an API key. It's not wise to check that in to a public repo. Instead we store it in Travis as a secure environment variable. That works, but annoyingly it means you can't have Travis deploy to Heroku directly from a pull request.

I'd like to also be able to push automatically to production whenever a prod_release_ptr branch is updated, but it seems that Travis won't run another build if the prod_release_ptr is being updated to point to a commit which has already been 'built' via the master branch. I hope to figure out a way around this so that we can use github+travis for push-button production deploys.
