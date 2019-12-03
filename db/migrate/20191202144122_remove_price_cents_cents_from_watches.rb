class RemovePriceCentsCentsFromWatches < ActiveRecord::Migration[5.2]
  def change
    remove_column :watches, :price, :integer
  end
end
