class BookingItemsController < ApplicationController
  before_action :authenticate_user!
  def create
    @booking = Booking.find params[:booking_id]
    @booking_item = BookingItem.new(booking_item_params)
    @booking_item.booking = @booking
    if @booking_item.save
      update_booking_price
      redirect_to watch_path(@booking_item.watch)
    end
  end

  def show
    @booking_item = BookingItem.find(params[:id])
    @watch = Watch.find(params[:watch_id])
  end

  def destroy
    @booking_item = BookingItem.find(params[:watch_id])
    @booking_item.destroy
    flash[:notice] = "Votre montre a bien été supprimée"
    redirect_to booking_path(@booking)
  end

  private

  def booking_item_params
    params.require(:booking_item).permit(:watch_id, :start_date, :end_date)
  end

  def update_booking_price
    @booking.price_cents = @booking.booking_items.reduce(0) { |sum, item| sum + item.cost_cents}
    @booking.save
  end
end
