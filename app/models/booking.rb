class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :accomodation

  validates :check_in, :presence => true
  validates :check_out, :presence => true

end
