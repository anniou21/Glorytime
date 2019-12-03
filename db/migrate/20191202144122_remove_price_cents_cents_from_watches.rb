class RemovePriceCentsCentsFromWatches < ActiveRecord::Migration[5.2]
  def change
    remove_column :watches, :price_cents_cents, :integer
  end
end
