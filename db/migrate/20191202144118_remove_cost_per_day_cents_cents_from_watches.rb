class RemoveCostPerDayCentsCentsFromWatches < ActiveRecord::Migration[5.2]
  def change
    remove_column :watches, :cost_per_day_cents_cents, :integer
  end

end
