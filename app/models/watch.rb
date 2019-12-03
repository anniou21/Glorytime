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

end

