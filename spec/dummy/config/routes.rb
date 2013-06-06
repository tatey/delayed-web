Dummy::Application.routes.draw do
  mount Delayed::Dashboard::Engine, at: '/'
end
