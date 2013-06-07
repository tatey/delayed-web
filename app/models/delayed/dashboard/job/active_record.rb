module Delayed
  module Dashboard
    class Job::ActiveRecord
      def self.find *args
        Delayed::Job.find *args
      end

      def self.all
        Delayed::Job.limit 100
      end
    end
  end
end
