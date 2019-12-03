class AddCostPerDayToWatches < ActiveRecord::Migration[5.2]
  def change
    add_column :watches, :cost_per_day, :integer
  end
end
