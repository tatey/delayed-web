module Delayed
  module Web
    class ApplicationController < Spree::Admin::BaseController
    protected

      def title new_title = nil
        @title = new_title if new_title
        @title
      end
      helper_method :title
    end
  end
end
