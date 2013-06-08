Rails.application.config.to_prepare do
  Delayed::Web::Job.backend = 'double'
end
