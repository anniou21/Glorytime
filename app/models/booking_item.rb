class BookingItem < ApplicationRecord
  belongs_to :booking
  belongs_to :watch
  has_many :reviews, dependent: :destroy

  after_create_commit :compute_cost
  monetize :cost_cents

  def stripe_line_item
    {
      name: watch.sku,
      images: [Rails.application.routes.url_helpers.rails_blob_path(watch.photo, only_path: true)],
      amount: cost_cents,
      currency: 'eur',
      quantity: 1
    }
  end


  private

  def compute_cost
    price = watch.cost_per_day_cents
    self.cost_cents = (end_date - start_date).to_i * price
    save
  end

end


