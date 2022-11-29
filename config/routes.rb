Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :restaurants, except: :index do
    resources :meals, only: [:new, :create, :edit, :update, :destroy]
  end
    
  resources :meals, only: %i[index show] do
    resources :bookings, only: %i[new create]
    resources :favorites, only: %i[create]
  end
end
