module Delayed
  module Dashboard
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      desc 'Installs Delayed Dashboard'

      def installe
        template 'initializer.rb', 'config/initializers/delayed_dashboard.rb'
        route 'mount Delayed::Dashboard::Engine, at: \'/jobs\''
      end
    end
  end
end
