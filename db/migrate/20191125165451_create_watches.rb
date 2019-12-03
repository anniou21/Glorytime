class CreateWatches < ActiveRecord::Migration[5.2]
  def change
    create_table :watches do |t|
      t.string :brand
      t.string :model
      t.integer :price
      t.string :description
      t.boolean :availability
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
