class RestaurantsController < ApplicationController
  def index
  @restaurants = Category.find(params[:category]["id"]).restaurants
  end

  def new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
