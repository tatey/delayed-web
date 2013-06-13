require 'spec_helper'

describe Delayed::Web::JobsHelper do
  describe '#status_dom_class' do
    it 'is badge warning' do
      dom_class = helper.status_dom_class 'executing'

      expect(dom_class).to eq('badge badge-warning')
    end

    it 'is badge important' do
      dom_class = helper.status_dom_class 'failed'

      expect(dom_class).to eq('badge badge-important')
    end

    it 'is badge' do
      dom_class = helper.status_dom_class 'queued'

      expect(dom_class).to eq('badge')
    end
  end
end
