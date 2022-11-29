Rails.application.routes.draw do
  devise_for :users
  root to: "sessions#new"

  resources :restaurants, except: :index do
    resources :meals, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :meals, only: %i[index show] do
    resources :bookings, only: %i[new create]
    resources :favorites, only: %i[create]
  end

  resources :bookings, only: %i[index show]

  namespace :my do
    resources :bookings, only: %i[index show edit update destroy]
  end

  resources :favorites, only: %i[index show update destroy]
end
