Rails.application.routes.draw do
  devise_for :admin_users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  get "/reservation", to: "pages#reservation"
  resources :users do
    resources :subscriptions, only: %i[new create] do
      resources :payements
    end
    resources :bookings, only: %i[new create destroy] do
      resources :courses, only: %i[index show]
    end
  end
  resources :reviews, only: %i[index new create]
end
