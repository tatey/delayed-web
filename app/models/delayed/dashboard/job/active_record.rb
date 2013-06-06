module Delayed
  module Dashboard
    class Job::ActiveRecord
      def self.find *args
        Delayed::Job.find *args
      end

      def self.all
        Delayed::Job.scoped
      end
    end
  end
end
