class AddEndDateToBookingItems < ActiveRecord::Migration[5.2]
  def change
    add_column :booking_items, :end_date, :date
  end
end
