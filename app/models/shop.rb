class Shop < ApplicationRecord
  belongs_to :user
  has_many :watches, dependent: :destroy
end
