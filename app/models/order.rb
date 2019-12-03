class Order < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  monetize :price_cents, currency: { present: false }
end
