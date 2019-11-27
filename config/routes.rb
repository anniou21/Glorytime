Rails.application.routes.draw do
  devise_for :users
  root to: 'watches#index'
  resources :watches
  resources :shops, only: [:index, :show]

  resources :bookings, only: [ :index, :show, :create, :edit ]  do
    resources :booking_items, only: [:index, :create, :new, :update, :delete]
  end

  get '/dashboard', to: 'dashboard#show'
end


