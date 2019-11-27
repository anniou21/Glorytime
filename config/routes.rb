Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  # FLOW RENTER
  resources :watches, only: [:index, :show]
  resources :shops,   only: [:show]

  resources :bookings, only: [:index, :show] do
    resources :booking_items, only: [:create]
  end

  resources :booking_items, only: [:destroy]

  resource :dashboard, only: [:show]
  # get '/dashboard', to: 'dashboards#show'

  # FLOW OWNER (si on a le temps)
  # namespace :owner do
  #   resources :shops
  #   resources :watches
  # end
end

