module Delayed
  module Web
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      desc 'Installs Delayed::Web'

      def installe
        template 'initializer.rb', 'config/initializers/delayed_web.rb'
        route 'mount Delayed::Web::Engine, at: \'/jobs\''
      end
    end
  end
end
