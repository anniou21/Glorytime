class BookingItem < ApplicationRecord
  belongs_to :booking
  belongs_to :watch
end
