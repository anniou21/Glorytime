class RemoveCostFromBookingItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :booking_items, :cost, :integer
  end
end
