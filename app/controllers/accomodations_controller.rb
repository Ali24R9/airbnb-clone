class AccomodationsController < ApplicationController
  before_filter :authenticate_user!, except: [:show]
  before_filter :find_accomodation, only: [:show]

  def index
    @accomodations = Accomodation.all
  end

  def show
  end

  def create
    @accomodation = Accomodation.new(accomodation_params)
    if @accomodation.save
      @accomodation.user_id = current_user.id
      flash[:notice] = "Listing added successfully"
      respond_to do |format|
        format.html { redirect_to user_path(current_user.id) }
        format.js
      end
    else
      alert[:notice] = "Listing not saved"
      redirect_to user_path(@user_id)
    end
  end

  private

  def find_accomodation
    @accomodation = Accomodation.find(params[:id])
  end

  def accomodation_params
    params.require(:accomodation).permit(:location, :description, :price, :rooms, :cancellation_fee, :user_id)
  end
end
