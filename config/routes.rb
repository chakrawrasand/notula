Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'tokens/create'
    end
  end
  root 'pages#index'

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :tokens, only: [:create]
      resources :teams
      resources :members
      resources :notes
    end
  end
end
