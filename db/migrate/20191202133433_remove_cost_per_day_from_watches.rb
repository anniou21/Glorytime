class RemoveCostPerDayFromWatches < ActiveRecord::Migration[5.2]
  def change
    remove_column :watches, :cost_per_day, :integer
  end
end
