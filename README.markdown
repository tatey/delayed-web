# Delayed::Web for Delayed::Job

[![Build Status](https://travis-ci.org/thebestday/delayed-web.png?branch=master)](https://travis-ci.org/thebestday/delayed-web)
[![Code Climate](https://codeclimate.com/github/thebestday/delayed-web.png)](https://codeclimate.com/github/thebestday/delayed-web)

A rails engine that provides a simple web interface for exposing the
[Delayed::Job](https://github.com/collectiveidea/delayed_job) queue.

![](http://f.cl.ly/items/1j2m2g223s3q33140S3H/Screen%20Shot%202013-06-13%20at%2011.47.57%20PM.png)

## Requirements

* Ruby 1.9.3 or 2.0.0
* Rails 3.2.x or 4.0.x
* Delayed::Job 3.0.x, 4.0.x (ActiveRecord backend)

## Installation

Put this in your Gemfile.

    gem 'delayed-web', github: 'thebestday/delayed-web'

Run bundler.

    bundle install

Run the installation generator.

    rails generate delayed:web:install

This will install an initializer into `config/initializers/delayed_web.rb`,
mount the engine at `/jobs` in `config/routes.rb` and add the stylesheets
to the list of precomiled assets in `application.rb` (If assets are
enabled).

## Routes

The installation script will automatically add routes into your app,
like this.

    # config/routes.rb
    Rails.application.routes.draw do
      mount Delayed::Web::Engine, at: '/jobs'
    end

This will mount the following routes.

    GET /
    GET /jobs
    GET /jobs/:id

## Authentication

Out of the box Delayed::Web doesn't make any assumptions about
authentication. It's possible to take advantage of rails routing
constraints or rack middleware.

An example using Devise's `authenticated` constraint.

    # config/routes.rb
    authenticated :user, -> user { user.admin? } do
      mount Delayed::Web::Engine, at: '/jobs'
    end

An example using Rack::Auth::Basic.

    # config/routes.rb
    Delayed::Web::Engine.middleware.use Rack::Auth::Basic do |username, password|
      username == ENV['USERNAME'] && password == ENV['PASSWORD']
    end

## Backend

The installation script will automatically set the backend you're using for
Delayed::Job, like this.

    # config/initializers/delayed_web.rb
    Rails.application.config.to_prepare do
      Delayed::Web::Job.backend = 'active_record'
    end

Currently, ActiveRecord is the only supported backend. We would welcome a
pull request for Monogoid. See `Delayed::Web::Job` to get started.

## Asset Pipeline

Add the engine's assets to your whitelist of precompiled assets.

    # config/application.rb
    config.assets.enabled = true
    config.assets.precompile << 'delayed/web/application.css'

## Developing Locally

After you've cloned the repository, run bundler.

    bundle install

Make sure the specs are passing.

    rake

Run the dummy rails app.

    cd spec/dummy
    rails s

Go to http://localhost:3000.

The dummy rails app uses `Delayed::Web::Job::Double` as its backend.
It is an in-memory double of a real Delayed::Job.

## License

Copyright © 2013 TheBestDay Pty. Ltd. Released under the MIT license. See LICENSE.
