Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :restaurants
  get 'restaurants/index'
  root :to => "restaurants#index"
end
