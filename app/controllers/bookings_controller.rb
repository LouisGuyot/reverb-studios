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
    authorize @booking
    if @booking.save
      redirect_to studio_booking_path(@studio, @booking), notice: "Your studio has been booked"
    else
      render :new, status: :unprocessable_entity
    end
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
      lng: @studio.longitude,
      info_window: render_to_string(partial: "info_window", locals: {studio: @studio})
    ]
  end

# test destroy without id.

  def destroy
    if current_user.id == @booking.user_id
      @booking.destroy
      redirect_to studio_bookings_path notice: "Your booking has been canceled!"
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
