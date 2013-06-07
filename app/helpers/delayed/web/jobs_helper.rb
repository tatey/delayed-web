module Delayed::Web::JobsHelper
  def status_text job
    case
    when job.locked_at && job.locked_by
      'executing'
    when job.attempts > 0 && job.last_error.present?
      'failed'
    else
      'queued'
    end
  end

  def status_dom_class job
    case status_text job
    when 'executing' then 'badge badge-warning'
    when 'failed'    then 'badge badge-important'
    else                  'badge'
    end
  end
end
