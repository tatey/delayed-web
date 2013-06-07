# Tell Delayed::Dashboard that we're using ActiveRecord as the backend
# for Delayed::Job.
Delayed::Dashboard::Job.backend = 'active_record'
