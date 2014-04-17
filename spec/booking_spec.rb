require 'spec_helper'

describe Booking do

  it { should belong_to :user }
  it { should belong_to :accomodation }

  it { should validate_presence_of :check_in }
  it { should validate_presence_of :check_out }

end
