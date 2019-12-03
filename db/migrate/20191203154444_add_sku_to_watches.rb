class AddSkuToWatches < ActiveRecord::Migration[5.2]
  def change
    add_column :watches, :sku, :string
  end
end
