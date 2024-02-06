Rails.application.routes.draw do
  devise_for :users
  root to: 'reviews#index'

  resources :reviews do
    resources :questions, only: :create
  end
end
