Rails.application.routes.draw do
  devise_for :users
  root to: 'reviews#index'

  resources :users, only: [:show, :edit, :update, :destroy]
  resources :reviews do
    resources :questions, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
end
