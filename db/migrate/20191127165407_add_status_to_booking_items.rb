class AddStatusToBookingItems < ActiveRecord::Migration[5.2]
  def change
    add_column :booking_items, :status, :string
  end
end
