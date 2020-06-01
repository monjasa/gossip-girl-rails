# Gossip Girl on Rails

[Gossip Girl website](https://gossip-girl-alpha.herokuapp.com) deployed on [Heroku Platform](https://dashboard.heroku.com/).

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Prerequisites

The setups steps expect following tools installed on the system.

* [Ruby 2.6.6](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-6-6-released/)
* [Rails 6.0.3](https://github.com/rails/rails/releases/tag/v6.0.3)

#### Check your Ruby version

```
ruby -v
```

If output doesn't start with `ruby 2.6.6`, you should install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```
rbenv install 2.6.6
```

## Installing

#### Clone the repository

```
git@github.com:Monjasa/gossip-girl-rails.git
cd gossip-girl-rails
```

#### Install dependencies

Using [Bundler](https://github.com/rubygems/rubygems/tree/master/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```
bundle install
yarn install
```

#### Install MailCatcher

[MailCatcher](https://mailcatcher.me) runs a simple SMTP server which catches any message sent to it to display in a web interface. It is used in development to simplify confirmation needs provided by [Devise confirmable](https://github.com/heartcombo/devise/wiki/How-To:-Add-:confirmable-to-Users) module.

```
gem install mailcatcher
```

#### Set environment variables

Create `.ENV` file and fill in following environment variables:

```
GMAIL_DOMAIN = your.domain
GMAIL_USERNAME = your-username@your.domain
GMAIL_PASSWORD = your-password
```

#### Initialize the database

```
rails db:create db:migrate db:seed
```

#### Add heroku remotes

Using [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli):

```
heroku git:remote -a project
heroku git:remote --remote heroku-staging -a project-staging
```

## Serve

Before setting up the rails server, run `mailcatcher` SMTP server:

```
mailcatcher
```

You can start the rails server using the command given below.

```
rails s
```

And now you can visit the site with the URL http://localhost:3000. Emails will be sent by the default SMTP server located at http://127.0.0.1:1025, and you can check them out using http://127.0.0.1:1080 as a mail catching server.

## Deploy

#### With Heroku pipeline (recommended)

Push to Heroku staging remote:

```
git push heroku-staging
```

Go to the Heroku Dashboard and [promote the app to production](https://devcenter.heroku.com/articles/pipelines) or use Heroku CLI:

```
heroku pipelines:promote -a project-staging
```

#### Directly to production (not recommended)

Push to Heroku production remote:

```
git push heroku
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

* University Ruby course by [Nazar Matus](https://github.com/FunkyloverOne)
* Web-Crunch's [Let's Build: With Ruby On Rails](https://www.youtube.com/channel/UCzePijHDYnVHIXW6HYTL4dg) series
* [Ruby on Rails Help](https://rubyonrailshelp.wordpress.com) blog (particularly, [post on setting up mailer](https://rubyonrailshelp.wordpress.com/2014/01/02/setting-up-mailer-using-devise-for-forgot-password/))