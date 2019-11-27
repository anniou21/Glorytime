class Booking < ApplicationRecord
  belongs_to :user
  has_many :booking_items
end
