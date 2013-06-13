Delayed::Web::Engine.routes.draw do
  root to: 'jobs#index'

  resources :jobs, only: [:destroy, :index, :show] do
    put :queue, on: :member
  end
end
