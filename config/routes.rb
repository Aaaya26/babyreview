Rails.application.routes.draw do
  devise_for :users
  root to: 'reviews#index'

  resources :reviews do
    collection do
      get 'search'
    end
    resources :questions, only: :create
  end
end
