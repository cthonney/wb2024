class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :payment, :show_qr]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    # @booking = Booking.find(params[:id])
  end


  def create
    puts "create booking"

    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end


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

  def show_qr
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :start_island_id, :end_island_id, :pets, :baggages, :kids, :adults)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
