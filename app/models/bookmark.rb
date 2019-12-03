class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :watch
  validates :user_id, presence: true
  validates :watch_id, presence: true
end
