class BookingsController < ApplicationController
  def new
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new
  end

  def create
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new(booking_params)
    @booking.studio = @studio
    @booking.save
    redirect_to booking_path(@booking)
  end

   private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :studio)
  end
end
