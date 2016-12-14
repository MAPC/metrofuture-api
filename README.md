# MetroFuture API

JSON API for the MetroFuture project database.

[Read the blog post about this project](https://medium.com/p/a8f9ceea0b50/) to understand what this app does and why we set it up the way it is.

## Developing

This project depends on a connection to Microsoft SQL Server 2008. (The ActiveRecord adapter must stay at version 4.1.*, because 4.2 drops support for Microsoft SQL Server 2008.)

On a *nix machine, you'll need [FreeTDS](http://www.freetds.org/) installed in your development environment in order to connect to the SQL Server.

- Install the latest FreeTDS by running `brew update && brew install freetds` on a Mac with [Homebrew](https://brew.sh).
- Follow the instructions in [the blog post about this project](https://medium.com/p/a8f9ceea0b50/) to set up your connection to the SQL database.

## Deploying

Deploying this application can be challenging, because it depends on Unix machines talking to non-Unix machines.

__Heroku__

We use [multiple Heroku buildpacks](https://devcenter.heroku.com/articles/using-multiple-buildpacks-for-an-app) to deploy our app. They are set as follows.

```
$ heroku buildpacks

1. https://github.com/foraker/heroku-buildpack-freetds
2. heroku/ruby
```

__Dokku / Dokku-Alt__

We previously deployed to our self-hosted PaaS ([Dokku Alt](https://github.com/dokku-alt/dokku-alt)) using a Docker-based deployment. See the [Dockerfile](Dockerfile) for more.

### Allowing IPs

If your SQL Server only allows connections from explicitly allowed IPs, you will need to set up static IPs on Heroku, because by default Heroku IPs are not deterministic.

1. Add the [QuotaGuard Static add-on](https://devcenter.heroku.com/articles/quotaguardstatic) to your app. (Fixie, another add-on, only provides Static IPs for HTTP requests, but your database does connect via HTTP.)

2. Open the [QuotaGuard Static dashboard](https://www.quotaguard.com/dashboard/static), and send the IPs to whoever administers your SQL Server, so you can allow traffic from your app.

3. Forward traffic from your app to the database.

Set up QuotaGuard Static's SOCKS5 proxy, either via [qgtunnel](https://devcenter.heroku.com/articles/quotaguardstatic#setting-up-socks5-tunnel) or [qgsocksify](https://devcenter.heroku.com/articles/quotaguardstatic#installing-the-quotaguard-static-socksify-wrapper), which we use.

To test your connection via the Rails console, make sure to run either `bin/qgtunnel rails c` or `bin/qgsocksify rails c` to forward traffic -- otherwise the Rails console won't use your QuotaGuard IPs.

If you use the `qgsocksify` method, remember to [set it up so that it ONLY forwards traffic to your database](https://devcenter.heroku.com/articles/quotaguardstatic#controlling-what-traffic-goes-through-the-socksify-wrapper) -- otherwise every request your app makes will be forwarded through this proxy, and you'll incur a cost.


## Restarting

The SQL Server occasionally runs out of memory, so it can't run SQL queries. This causes the API to freeze. Usually, the issue is resolved when the SQL Server is rebooted, but you may need to `heroku restart` after that, as well.
