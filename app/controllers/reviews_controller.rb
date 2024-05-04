class ReviewsController < ApplicationController
  def index
    # @reviews = Review.all
  end

  def show
    # @review = Review.find(params[:id])
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

  def review_params
    params.require(:review).permit(:start_date, :end_date)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
