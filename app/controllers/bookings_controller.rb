class BookingsController < ApplicationController
  def index
    @booking = current_user.bookings
  end

  def show
    # @booking = bookings.where(name:'Cedrik').first_or_create
    # @booking_item = BookingItem.new
    @bookings = current_user.bookings

  end
end
