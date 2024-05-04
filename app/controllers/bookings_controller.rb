class BookingsController < ApplicationController
  def index
    # @bookings = Booking.all
  end

  def show
    # @booking = Booking.find(params[:id])
  end

  def create

  end

  def new

  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
