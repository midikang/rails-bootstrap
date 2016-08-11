Rails.application.routes.draw do
  resources :posts
  resources :categories
  root to: 'visitors#index'
end
