class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(set_restaurant)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  # strong params
  def set_restaurant
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
