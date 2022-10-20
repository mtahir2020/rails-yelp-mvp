class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  def index
    @reviews = Review.all
  end

  # def new
  #   # Have to fetch the restaurant first
  #   # https://stackoverflow.com/questions/70686373/nomethoderror-in-reviewsnew-after-clicking-on-a-link-to-create-review-page
  #   @review = Review.new
  # end

  def create
    # Need to fetch @restaurant first so @review has requisite information to add to
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      # how to render parent restaurant's 'show'
      render 'restaurants/show', status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
    # do we have to pass in restaurant id?
  end
end
