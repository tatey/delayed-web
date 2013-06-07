require 'forwardable'

module Delayed
  module Web
    class Job
      extend SingleForwardable

      def_delegator :backend, :all
      def_delegator :backend, :find

      # Set the backend you're using for Delayed::Job.
      #
      # Example:
      #   Delayed::Web::Job.backend = :active_record
      #
      # @param new_backend [String] "active_record" or "double".
      #
      # @return [void]
      def self.backend= new_backend
        @backend = "Delayed::Web::Job::#{new_backend.classify}".constantize
      end

      def self.backend
        @backend
      end
    end
  end
end
