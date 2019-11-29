class WatchesController < ApplicationController
  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:id])
    @booking_item = BookingItem.new(watch: @watch)
  end
end
