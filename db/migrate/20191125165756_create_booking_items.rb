class CreateBookingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_items do |t|
      t.references :booking, foreign_key: true
      t.references :watch, foreign_key: true

      t.timestamps
    end
  end
end
