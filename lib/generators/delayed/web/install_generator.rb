module Delayed
  module Web
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      desc 'Installs Delayed::Web'

      def install
        template 'initializer.rb', 'config/initializers/delayed_web.rb'
        route 'mount Delayed::Web::Engine, at: \'/jobs\''
        if assets?
          application "config.assets.precompile << 'delayed/web/application.css'"
        end
      end

    private

      def assets?
        Rails::Generators.options.fetch(:rails, {}).fetch(:assets, false)
      end
    end
  end
end
