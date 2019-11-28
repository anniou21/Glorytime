class BookingItem < ApplicationRecord
  belongs_to :booking
  belongs_to :watch
  has_many :reviews, dependent: :destroy
end
