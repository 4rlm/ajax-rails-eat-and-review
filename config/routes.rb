Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :restaurants
  get 'home/index'
  root :to => "home#index"
end
