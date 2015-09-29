module Delayed
  module Web
    class Job::Mongoid

      def self.find *args
        decorate Delayed::Job.find(*args)
      end

      def self.all
        jobs = Delayed::Job.order_by(created_at: 'desc').limit(100)
        Enumerator.new do |enumerator|
          jobs.each do |job|
            enumerator.yield decorate(job)
          end
        end
      end

      def self.decorate job
        ActiveRecordDecorator.new StatusDecorator.new(job)
      end

    end
  end
end
