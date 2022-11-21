class BookingsController < ApplicationController

  def new
    @studio = Studio.new
  end

  def create
    @booking = Booking.new(params[:booking])
    @booking.save
  end
end
