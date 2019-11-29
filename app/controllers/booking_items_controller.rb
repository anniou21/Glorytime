class BookingItemsController < ApplicationController
  before_action :authenticate_user!
  def create
    #t.bigint "booking_id"
    #t.bigint "watch_id"
    #t.date "end_date"
    #t.date "start_date"
    #t.string "status"
    raise
    watch = Watch.find params[:watch_id]

    @booking_item = BookingItem.new(
      watch_id: watch,
      booking: @booking,
      start_date: "datepicker value start",
      end_date: "datepicker value end",
      status: "pending"
      )
    #@booking_item.save
  end

  def show
    @booking_item = BookingItem.find(params[:id])
    @watch = Watch.find(params[:watch_id])
  end

  def destroy
  end
end

