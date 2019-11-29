class BookingItemsController < ApplicationController
  before_action :authenticate_user!
  def create
    # watch = Watch.find params[:watch_id]

    @booking_item = BookingItem.new(
      watch_id: params[:booking_item][:watch_id],
      booking: @booking,
      start_date: params[:booking_item][:start_date].split.first,
      end_date: params[:booking_item][:start_date].split.last,
      status: "pending"
      )
  end
  # rajouter column price basé sur le prix de la montre par jour multiplié par le nombre de jours

  def show
    @booking_item = BookingItem.find(params[:id])
    @watch = Watch.find(params[:watch_id])
  end

  def destroy
  end
end

#  params => start_date.split Start_date= first end_date=last
