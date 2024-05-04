class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_island, only: [:show, :edit, :update, :destroy]

  def index
    @islands = Island.all
    # The `geocoded` scope filters only islands with coordinates
    @markers = @islands.geocoded.map do |island|
      {
        lat: island.latitude,
        lng: island.longitude
      }
    end
  end

  def show
    # @island = Island.find(params[:id])
    @marker =
      {
        lat: @island.latitude,
        lng: @island.longitude
      }
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

  def island_params
    params.require(:island).permit(:start_date, :end_date)
  end

  def set_island
    @island = Island.find(params[:id])
  end
end
