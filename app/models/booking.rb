class Booking < ApplicationRecord
  belongs_to :user
  has_many :booking_items
  has_many :watches, through: :booking_items
end
