class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
    @booking_item = @booking.booking_item_ids # array with all bookings item for current user

  end
end
