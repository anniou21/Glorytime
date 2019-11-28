class AddStartDateToBookingItems < ActiveRecord::Migration[5.2]
  def change
    add_column :booking_items, :start_date, :date
  end
end
