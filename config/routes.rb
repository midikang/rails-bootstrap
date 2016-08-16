Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :categories
  root to: 'visitors#index'
end
