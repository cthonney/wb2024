class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :payment]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    # @booking = Booking.find(params[:id])
  end

  def create

  end

  def new
    @island = Island.find(params[:island_id]) if params[:island_id]
    @islands = Island.all
    @booking = Booking.new
  end

  def update
  end

  def destroy
  end

  # custom routes
  def payment

  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
