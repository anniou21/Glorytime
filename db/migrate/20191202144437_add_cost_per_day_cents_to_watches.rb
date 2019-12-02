class AddCostPerDayCentsToWatches < ActiveRecord::Migration[5.2]
  def change
    add_monetize :watches, :cost_per_day, currency: { present: false }
  end
end
