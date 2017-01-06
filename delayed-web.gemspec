$:.push File.expand_path('../lib', __FILE__)

require 'delayed/web/version'

Gem::Specification.new do |s|
  s.name        = 'spree-delayed-web'
  s.version     = Delayed::Web::VERSION
  s.authors     = ['Tate Johnson', 'Jitendra Rai']
  s.email       = ['tate@thebestday.com', 'jrai.999@gmail.com']
  s.homepage    = 'https://github.com/vinsol-spree-contrib/spree-delayed-web'
  s.summary     = 'A rails engine that provides a simple web interface for exposing the Delayed::Job queue.'
  s.description = 'A fork of delayed-web libraries written by Tate Johnson. Small changes are added for spree integration.'
  s.license     = 'MIT'

  s.files      = Dir['{app,config,lib,vendor}/**/*', 'CONTRIBUTING.md', 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '>= 3.2.13'

  s.add_development_dependency 'capybara', '~> 2.7.1'
  s.add_development_dependency 'rspec-rails', '~> 3.5.2'
  s.add_development_dependency 'sqlite3'
end
