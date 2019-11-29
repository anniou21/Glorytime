class AddCostToBookingItems < ActiveRecord::Migration[5.2]
  def change
    add_column :booking_items, :cost, :integer
  end
end
