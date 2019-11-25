class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status
      t.references :user, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.float :price_total

      t.timestamps
    end
  end
end
