module Delayed
  module Dashboard
    class Engine < Rails::Engine
      isolate_namespace Delayed::Dashboard
    end
  end
end
