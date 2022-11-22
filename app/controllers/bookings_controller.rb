class BookingsController < ApplicationController
  def new
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @studio = Studio.find(params[:studio_id])
    @booking.studio = @studio
    @booking.user = current_user
    @booking.save
    authorize @booking
    redirect_to studio_booking_path(@studio, @booking)
  end

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:studio_id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :studio_id, :user_id)
  end
end
