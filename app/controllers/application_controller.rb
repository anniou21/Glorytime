class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :set_booking

  def set_booking
    @booking = if Booking.where(status:'pending', user: current_user).exists?
                  Booking.find_by(status:'pending', user: current_user)
               else
                 Booking.create(status:'pending', user: current_user)
               end
  end
end
