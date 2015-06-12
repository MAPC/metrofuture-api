# MetroFuture API

JSON API for the MetroFuture project database.

## Developing

This project depends on a connection to MSSQL Server 2008. (The ActiveRecord adapter is limited to the 2005-8 version. A version bump gets you 2012 compatibility, and loses previous versions.)

On a Mac, you'll need FreeTDS installed in your development environment.

- Install [Homebrew](http://brew.sh) if you haven't already.
- Install the latest FreeTDS by running `brew update && brew install freetds`.
- More instructions to come, but in the meantime, follow the instructions in this project's [Gemfile](Gemfile) to get your connection to SQL server up and running.


## Deploying

If you deploying to an environment that supports buildpacks (such as Dokku, Deis, or Heroku), use your platform's `config:set` command to set `BUILDPACK_URL=https://github.com/amandameng/heroku-freetds-buildpack.git`, or to any buildpack repository (ending in `.git`) that supports Ruby and FreeTDS.