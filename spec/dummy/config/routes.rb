Dummy::Application.routes.draw do
  mount Delayed::Web::Engine, at: '/'
end
