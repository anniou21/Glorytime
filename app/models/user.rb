class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :orders
  has_one_attached :photo
  has_many :bookmarks

  def get_items
    self.bookings.find_by(status: 'pending').booking_items.count
  end

 

end
