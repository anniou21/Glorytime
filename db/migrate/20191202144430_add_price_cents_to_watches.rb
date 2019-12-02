class AddPriceCentsToWatches < ActiveRecord::Migration[5.2]
  def change
    add_monetize :watches, :price, currency: { present: false }
  end
end
