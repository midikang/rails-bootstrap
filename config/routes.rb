Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    collection do
      get 'search'
    end
  end

  resources :categories
  root to: 'visitors#index'
end
