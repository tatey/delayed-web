require 'spec_helper'

describe 'Jobs' do
  describe 'User visiting jobs' do
    it 'sees a list of jobs' do
      get jobs_path

      expect(response).to render_template('index')
    end

    it 'sees a job' do
      get job_path(id: 1)

      expect(response).to render_template('show')
    end
  end

  describe 'User destroying a job' do
    it 'redirects' do
      delete job_path(id: 1)

      expect(response).to redirect_to(jobs_path)
    end
  end
end
