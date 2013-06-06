$:.push File.expand_path('../lib', __FILE__)

require 'delayed/dashboard/version'

Gem::Specification.new do |s|
  s.name        = 'delayed-dashboard'
  s.version     = Delayed::Dashboard::VERSION
  s.authors     = ['Tate Johnson']
  s.email       = ['tate@thebestday.com']
  s.homepage    = 'http://github.com/thebestday/delayed-dashboard'
  s.summary     = 'Simple web interface for exposing the Delayed Job queue.'
  s.description = 'Simple web interface for exposing the Delayed Job queue.'

  s.files      = Dir['{app,config,lib}/**/*', 'LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '>= 3.2.13', '<~ 4.0.0'

  s.add_development_dependency 'rspec-rails', '~> 2.13.0'
  s.add_development_dependency 'sqlite3'
end
