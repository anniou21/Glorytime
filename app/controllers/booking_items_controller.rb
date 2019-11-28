class BookingItemsController < ApplicationController
  before_action :authenticate_user!
  def create
  end

  def show
    @booking_item = BookingItem.find(params[:id])
    @watch = Watch.find(params[:watch_id])
  end

  def destroy
  end
end
