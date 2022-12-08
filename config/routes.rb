Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :users, only: [:show]

  resources :restaurants, except: :index do
    resources :meals, only: %i[new create edit update destroy] do
      patch :move
    end
  end

  resources :meals, only: %i[index show] do
    resources :bookings, only: %i[new create]
    resources :favorites, only: %i[create]
    resources :reviews, only: %i[show new create]
  end

  resources :bookings, only: %i[index show destroy]

  resources :chatrooms, only: %i[index]

  resources :chatrooms, only: %i[show] do
    resources :messages, only: :create
  end

  namespace :my do
    resources :bookings, only: %i[index show edit update destroy]
  end

  resources :favorites, only: %i[index show update destroy]

  get '/badges', to: 'pages#badges'
end
