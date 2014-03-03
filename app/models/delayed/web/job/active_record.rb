module Delayed
  module Web
    class Job::ActiveRecord
      def self.find *args
        decorate Delayed::Job.find(*args)
      end

      def self.by_queue name
        jobs = Delayed::Job.order('id DESC').limit(100)
        jobs = jobs.where(queue: name) if name.present?
        jobs

        Enumerator.new do |enumerator|
          jobs.each do |job|
            enumerator.yield decorate(job)
          end
        end
      end

      def self.decorate job
        job = StatusDecorator.new job
        job = ActiveRecordDecorator.new job
        job
      end
    end
  end
end
