require 'forwardable'

module Delayed
  module Dashboard
    class Job
      extend SingleForwardable

      def_delegator :model, :all
      def_delegator :model, :find

      def self.model new_model = nil
        @model = new_model if new_model
        @model
      end
    end
  end
end
