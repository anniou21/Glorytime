class Watch < ApplicationRecord
  belongs_to :shop
  has_one_attached :photo
end
