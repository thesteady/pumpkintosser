Rails.application.routes.draw do
  root "beers#index"

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :beers, only: :show

  resources :users, only: :index
end
