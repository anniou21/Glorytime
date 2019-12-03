class BookingItem < ApplicationRecord
  include CloudinaryHelper
  belongs_to :booking
  belongs_to :watch
  has_many :reviews, dependent: :destroy

  after_create_commit :compute_cost
  monetize :cost_cents

  def stripe_line_item
    {
      name: watch.sku,
      images: [cloudinary_url(watch.photo.key)],
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


