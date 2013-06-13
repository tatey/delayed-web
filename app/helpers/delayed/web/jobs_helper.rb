module Delayed::Web::JobsHelper
  def status_dom_class status
    case status
    when 'executing' then 'badge badge-warning'
    when 'failed'    then 'badge badge-important'
    else                  'badge'
    end
  end
end
