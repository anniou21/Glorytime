class AddCostCentsToBookingItems < ActiveRecord::Migration[5.2]
  def change
    add_monetize :booking_items, :cost, currency: { present: false }
  end
end
