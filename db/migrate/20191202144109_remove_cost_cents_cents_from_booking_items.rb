class RemoveCostCentsCentsFromBookingItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :booking_items, :cost_cents_cents, :integer
  end
end
