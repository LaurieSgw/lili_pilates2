Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  get "reservation", to: "pages#reservation"
  resources :subscriptions, only: %i[new create] do
    resources :payements
  end
  resources :courses, only: %i[index] do
    resources :bookings, only: %i[new create destroy]
  end
  resources :reviews, only: %i[index new create]
end
