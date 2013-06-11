module Delayed
  module Web
    class JobsController < ApplicationController
      def destroy
        job.destroy
        redirect_to jobs_path, notice: t(:notice, scope: 'delayed/web.flashes.jobs.destroyed')
      end

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
