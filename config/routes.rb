Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :restaurants, except: :index do
    resources :meals, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :meals, only: %i[index show] do
    resources :bookings, only: %i[new create]
    resources :favorites, only: %i[create]
    resources :reviews, only: %i[show new create]
  end

  resources :bookings, only: %i[index show destroy]

  namespace :my do
    resources :bookings, only: %i[index show edit update destroy]
  end

  resources :favorites, only: %i[index show update destroy]
end
