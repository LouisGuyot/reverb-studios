class BookingsController < ApplicationController
  def new
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.studio = @studio
    @booking.user = current_user
    @booking.save
    redirect_to root_path


  end

   private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :studio)
  end
end
