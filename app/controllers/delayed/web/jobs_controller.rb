module Delayed
  module Web
    class JobsController < ApplicationController
    private

      def job
        @job ||= Delayed::Web::Job.find params[:id]
      end
      helper_method :job

      def jobs
        @jobs ||= Delayed::Web::Job.all
      end
      helper_method :jobs
    end
  end
end
