Rails.application.routes.draw do
  resources :users, :sessions, :reviews, :restaurants

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'profile/:id', to: 'users#show', as: 'profile'

  # get 'restaurants/index'
  # root :to => "restaurants#index"

  get 'home/index'
  root :to => "home#index"


end
