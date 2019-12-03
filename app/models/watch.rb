class Watch < ApplicationRecord
  belongs_to :shop
  has_one_attached :photo
  has_many :booking_items
  has_many :bookings, through: :booking_items
  has_many :bookmarks


    include PgSearch::Model
  pg_search_scope :search_by_model_and_brand,
    against: [:model, :brand],
    using: {
      tsearch: { prefix: true }
    }
  monetize :cost_per_day_cents
  monetize :price_cents
end

# rails g model Order state:string watch_sku:string amount:monetize checkout_session_id:string user:references watch:references
