class ReplacePriceTotalToPriceCentsInBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :price_total
    add_monetize :bookings, :price, currency: { present: false }
  end
end
