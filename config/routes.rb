Rails.application.routes.draw do
  resources :categories, only: [:index, :update]
  resources :tasks, only: [:index, :create, :destroy]
  mount ActionCable.server => '/cable'
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
