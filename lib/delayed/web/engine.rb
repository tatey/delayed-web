module Delayed
  module Web
    class Engine < Rails::Engine
      isolate_namespace Delayed::Web
    end
  end
end
