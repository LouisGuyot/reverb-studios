class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(params[:booking])
    @booking.user = current_user
    authorize @booking
    @booking.save
  end
end
