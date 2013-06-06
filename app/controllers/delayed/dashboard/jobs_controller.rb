module Delayed
  module Dashboard
    class JobsController < ActionController::Base
    private

      def job
        @job ||= Delayed::Dashboard::Job.find params[:id]
      end
      helper_method :job

      def jobs
        @jobs ||= Delayed::Dashboard::Job.all
      end
      helper_method :jobs
    end
  end
end
