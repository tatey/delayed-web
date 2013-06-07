require 'spec_helper'

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
