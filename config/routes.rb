Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  get "reservation", to: "pages#reservation"
  resources :subscriptions, only: %i[new create]
  resources :payements
  resources :courses, only: %i[index]
  resources :boookings, only: %i[new create destroy]
  resources :reviews, only: %i[index new create]
end
