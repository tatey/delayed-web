$:.push File.expand_path('../lib', __FILE__)

require 'delayed/web/version'

Gem::Specification.new do |s|
  s.name        = 'delayed-web'
  s.version     = Delayed::Web::VERSION
  s.authors     = ['Tate Johnson']
  s.email       = ['tate@thebestday.com']
  s.homepage    = 'http://github.com/thebestday/delayed-web'
  s.summary     = 'A rails engine that provides a simple web interface for exposing the Delayed::Job queue.'
  s.description = 'A rails engine that provides a simple web interface for exposing the Delayed::Job queue.'
  s.license     = 'MIT'

  s.files      = Dir['{app,config,lib,vendor}/**/*', 'CONTRIBUTING.md', 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '>= 3.2.13', '<= 4.0.0'

  s.add_development_dependency 'capybara', '~> 2.1.0'
  s.add_development_dependency 'rspec-rails', '~> 2.13.0'
  s.add_development_dependency 'sqlite3'
end
