# Delayed::Dashboard

Simple web interface for exposing the [Delayed::Job](https://github.com/collectiveidea/delayed_job) queue.

## Requirements

* Ruby 1.9.2, 1.9.3 or 2.0.0
* Rails 3.2.x or 4.0.x
* Delayed Job 3.0.x, 4.0.x
* ORM ActiveRecord

## Installation

Put this in your Gemfile.

    gem 'delayed-dashboard', github: 'thebestday/delayed-dashboard'

Run bundler.

    bundle install

Run the installation generator.

    rails generate delayed:dashboard:install

This will install an initializer into `config/initializers/delayed_dashboard.rb`
and mount the engine at `/jobs` in `config/routes.rb`.

## Routes

The installation script will automatically add routes into your app,
like this.

    Rails.application.routes.draw do
      mount Delayed::Dashboard::Engine, at: '/jobs'
    end

This will mount the following routes.

    GET /
    GET /jobs
    GET /jobs/:id

## Authentication

TODO

## Developing Locally

After you've cloned the repository, run bundler.

    bundle install

Make sure the specs are passing.

    rake

Run the dummy rails app.

    cd spec/dummy
    rails s

Go to http://localhost:3000.

## License

Copyright © 2013 TheBestDay Pty. Ltd. Released under the MIT license. See LICENSE.
