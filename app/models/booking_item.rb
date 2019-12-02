class BookingItem < ApplicationRecord
  belongs_to :booking
  belongs_to :watch
  has_many :reviews, dependent: :destroy

  after_create_commit :compute_cost
  monetize :cost_cents

  private

  def compute_cost
    # change self.cost to self.price
    price = watch.cost_per_day_cents
    self.cost_cents = (end_date - start_date).to_i * price
    save
  end
end
