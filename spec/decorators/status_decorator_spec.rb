require 'spec_helper'

describe Delayed::Web::StatusDecorator do
  let(:executing_job) { Delayed::Web::StatusDecorator.new double('Delayed::Job', locked_at: Time.current, locked_by: 'host.local', failed_at: nil) }
  let(:failed_job)    { Delayed::Web::StatusDecorator.new double('Delayed::Job', locked_at: nil, locked_by: nil, failed_at: Time.current, last_error: 'RuntimeError: RuntimeError') }
  let(:queued_job)    { Delayed::Web::StatusDecorator.new double('Delayed::Job', locked_at: nil, locked_by: nil, failed_at: nil, last_error: '') }

  describe '#status' do
    it 'is executing' do
      expect(executing_job.status).to eq('executing')
    end

    it 'is failed' do
      expect(failed_job.status).to eq('failed')
    end

    it 'is queued' do
      expect(queued_job.status).to eq('queued')
    end
  end

  describe '#can_destroy?' do
    it 'is true when failed' do
      expect(failed_job.can_destroy?).to be_true
    end

    it 'is true when queued' do
      expect(queued_job.can_destroy?).to be_true
    end

    it 'is false when executing' do
      expect(executing_job.can_destroy?).to be_false
    end
  end

  describe '#can_queue?' do
    it 'is true when failed' do
      expect(failed_job.can_queue?).to be_true
    end

    it 'is true when queued' do
      expect(queued_job.can_queue?).to be_true
    end

    it 'is false when executing' do
      expect(executing_job.can_queue?).to be_false
    end
  end
end
