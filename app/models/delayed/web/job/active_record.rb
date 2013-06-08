module Delayed
  module Web
    class Job::ActiveRecord
      def self.find *args
        Delayed::Job.find *args
      end

      def self.all
        Delayed::Job.order('id DESC').limit(100)
      end
    end
  end
end
