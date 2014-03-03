Delayed::Web::Engine.routes.draw do
  root to: 'jobs#index'

  scope '/:queue' do
    resources :jobs, only: [:destroy, :index, :show] do
      put :queue, on: :member
    end
  end
end
