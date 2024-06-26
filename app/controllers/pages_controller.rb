class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @booking = Booking.new
    @islands = Island.all
  end

  def about
  end

  def contact
  end

  def blog
    @blogs = [
      {
        title: "Unlocking the Mysteries ",
        date: "2023-01-10",
        author: "Dr. Deirdre Barrett",
        content: "An article that talks about how chickens can be interpreted and decoded by recognizing patterns and symbols, and provides tips for understanding and analyzing them."
      },
      {
        title: "A Guide to Understanding Your chickens",
        date: "2023-02-01",
        author: "Elizabeth Hartney, PhD",
        content: "Discuss the benefits of app interpretation and offers guidance on how to remember and interpret chickens, including common themes and symbols."
      }
    ]
    @reviews = Review.all
    @islands = Island.all
  end

  def tac
  end

  def policies
  end


end
