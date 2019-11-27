Rails.application.routes.draw do
  root to: 'watches#index'
  get 'shops/index'
  get 'shops/show'
  get 'booking_items/index'
  get 'booking_items/create'
  get 'booking_items/new'
  get 'booking_items/delete'
  get 'booking_items/update'
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/create'
  get 'bookings/edit'
  get 'watches/index'
  get 'watches/show'
  get 'watches/new'
  get 'watches/create'
  get 'watches/delete'
  devise_for :users
end

resources booking: do
end
