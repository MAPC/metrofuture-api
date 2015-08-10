# MetroFuture API

JSON API for the MetroFuture project database.

## Developing

This project depends on a connection to Microsoft SQL Server 2008. (The ActiveRecord adapter is limited to the 2005-2008 version. Upgrading gets you 2012 compatibility, but loses backwards compatibility.)

On a Unix/Linux machine (Mac OS included), you'll need [FreeTDS](http://www.freetds.org/) installed in your development environment to connect to the SQL Server.

- Install [Homebrew](http://brew.sh) if you haven't already.
- Install the latest FreeTDS by running `brew update && brew install freetds`.
- More instructions to come, but in the meantime, follow the instructions in this project's [database config](config/database.yml) to connect to Microsoft SQL Server.

## Deploying

Deploying this application can be challenging.

We opted to deploy to our PaaS ([Dokku Alt](https://github.com/dokku-alt/dokku-alt)) using a Docker-based deployment. See the [Dockerfile](Dockerfile) for more.

We were unable to deploy it in a buildpack-based environment (such as Heroku). Theoretically, a buildpack such as [heroku-freetds-buildpack](https://github.com/amandameng/heroku-freetds-buildpack), or any buildpack that supports Ruby and FreeTDS, should be able to deploy successfully to Heroku, Dokku, Deis, etc. However, even with [multiple][m] [customized][c] [buildpacks][b], we were unable to deploy.

[m]: https://github.com/beechnut/heroku-buildpack-freetds.git#develop
[c]: https://github.com/beechnut/heroku-bundle-config.git#develop
[b]: https://github.com/heroku/heroku-buildpack-ruby.git#v138
