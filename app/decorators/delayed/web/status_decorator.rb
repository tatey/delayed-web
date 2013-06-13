module Delayed
  module Web
    class StatusDecorator < SimpleDelegator
      def status
        case
        when locked_at && locked_by
          'executing'
        when attempts > 0 && last_error.present?
          'failed'
        else
          'queued'
        end
      end

      def can_destroy?
        status != 'executing'
      end

      def can_queue?
        status != 'executing'
      end
    end
  end
end
