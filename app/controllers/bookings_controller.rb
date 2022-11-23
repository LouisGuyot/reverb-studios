class BookingsController < ApplicationController
  before_action :set_studio, only: %i[destroy show]
  before_action :set_booking, only: %i[destroy show]

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
    authorize @booking
    @studio = Studio.find(params[:studio_id])
    @markers =
    [
      lat: @studio.latitude,
      lng: @studio.longitude
    ]
  end

  def destroy
    if current_user.id == @booking.user_id
      @booking.destroy
      redirect_to studio_bookings_path status: :see_other
      authorize @booking
    else
      return
    end

  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_studio
    @studio = Studio.find(params[:studio_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :studio_id, :user_id)
  end
end
