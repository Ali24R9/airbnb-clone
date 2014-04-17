require 'spec_helper'

describe Accomodation do

  it { should have_many(:users).through(:bookings) }
  it { should have_many :bookings }

  it { should validate_presence_of :location }
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }
  it { should validate_presence_of :rooms }
end
