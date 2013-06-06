# Delayed::Dashboard

Simple web interface for exposing the Delayed Job queue.

## Setup

Add this line to your application's Gemfile

    gem 'delayed-dashboard', github: 'thebestday/delayed-dashboard'

And then execute

    $ bundle install

## Usage

``` ruby
# config/routes.rb
My::Application.routes.draw do
  mount Delayed::Dashboard::Engine, at: '/jobs'
end
```

## License

Copyright © 2013 TheBestDay Pty. Ltd. Released under the MIT license. See LICENSE.
