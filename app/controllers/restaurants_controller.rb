class RestaurantsController < ApplicationController

  # A visitor can see the list of all restaurants.
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new(restaurant_params)
  end
  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurants).permit(:name, :address, :phone_number, :category)
  end

end
