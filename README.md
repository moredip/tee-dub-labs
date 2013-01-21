TeeDub Labs
============

This is a strawman implementation of a community-maintained heroku-backed website.

There are two apps setup on Heroku, a [Staging app](http://tee-dub-labs---staging.herokuapp.com/) and a [Production app](http://tee-dub-labs.herokuapp.com/).
The Staging app should always reflect the latest and greatest on `master` in the github repo. To deploy what's on master to Production you need to run `script/deploy_to_prod`. For that script to complete successfully you need a `HEROKU_API_KEY` environment variable set for a heroku user who is a collaborator for the production app.

How Do I Contribute?
============
- Edit projects.json, and then submit a pull request.
- As soon as your pull request is pulled in you should see your change live on the [Staging app](http://tee-dub-labs---staging.herokuapp.com/). 
- Once you've confirmed the changes look good someone with the heroku API key needs to run `scripts/deploy_to_prod`. Once that's done your changes are live on the [Production app](http://tee-dub-labs.herokuapp.com/).
