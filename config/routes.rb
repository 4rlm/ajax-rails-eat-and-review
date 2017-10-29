Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :articles
  resources :sessions

  resources :users
  resources :reviews
  resources :restaurants
  
  get 'restaurants/index'
  root :to => "restaurants#index"

  # root :to => "users#new"

end
