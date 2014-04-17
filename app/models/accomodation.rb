class Accomodation < ActiveRecord::Base
  has_many :bookings
  has_many :users, through: :bookings

  validates :location, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
  validates :rooms, :presence => true
end
