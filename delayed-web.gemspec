$:.push File.expand_path('../lib', __FILE__)

require 'delayed/web/version'

Gem::Specification.new do |s|
  s.name        = 'delayed-web'
  s.version     = Delayed::Web::VERSION
  s.authors     = ['Tate Johnson']
  s.email       = ['tate@tatey.com']
  s.homepage    = 'http://github.com/tatey/delayed-web'
  s.summary     = 'A Rails engine for Delayed::Job.'
  s.description = 'A Rails engine that provides a simple web interface for exposing the Delayed::Job queue.'
  s.license     = 'MIT'

  s.files      = Dir['{app,config,lib,vendor}/**/*', 'CONTRIBUTING.md', 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '~> 3.2', '>= 3.2.13'

  s.add_development_dependency 'capybara', '~> 2.7.1'
  s.add_development_dependency 'rspec-rails', '~> 3.5.2'
  s.add_development_dependency 'sqlite3', '~> 1.0'
end
