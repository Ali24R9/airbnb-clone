class UsersController < ApplicationController
  def show
    @accomodation = Accomodation.new
    @accomodations = Accomodation.all

  end
end
