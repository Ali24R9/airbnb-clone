class BookingsController < ApplicationController

  def new
    @accomodation = Accomodation.find_by(params[:id])
    @booking = Booking.new
  end

  def create
    @accomodation = Accomodation.find_by(params[:id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.accomodation_id = @accomodation.id
    if @booking.save
      flash[:notice] = "Room Booked!"
      redirect_to accomodations_path
    else
      alert[:notice] = "Room not booked, please try again"
      render("new")
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
