# Delayed::Dashboard

Simple web interface for exposing the Delayed Job queue.

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

## Authenticating

TODO

## License

Copyright © 2013 TheBestDay Pty. Ltd. Released under the MIT license. See LICENSE.
