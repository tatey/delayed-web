# Set ActiveRecord as our Delayed Job backend.
Delayed::Dashboard::Job.model Delayed::Dashboard::Job::ActiveRecord
