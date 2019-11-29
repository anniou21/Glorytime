class Watch < ApplicationRecord
  belongs_to :shop
  has_one_attached :photo
  has_many :booking_items
  has_many :bookings, through: :booking_items


end
