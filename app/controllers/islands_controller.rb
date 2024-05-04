class IslandsController < ApplicationController
  def index
    # @islands = Island.all
  end

  def show
    # @island = Island.find(params[:id])
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
