class MealsController < ApplicationController
  before_action :set_meal, only: %i[show edit update destroy]
  before_action :set_restaurant, only: %i[new create edit update destroy]

  def index
    @meals = Meal.all - current_user.favorites.map { |item| item.meal }
    # if params[:meal]
    #   @meals = Meal.where(id: params[:meal].to_i)
    # else
    #   @meals = @meals.sample(1)
    # end
    @favorite = Favorite.new
  end

  def show
    @restaurant = @meal.restaurant
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.restaurant = @restaurant
    if @meal.save
      redirect_to meal_path(@meal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @meal.restaurant = @restaurant
    @meal.update(meal_params)
    redirect_to meal_path(@meal)
  end

  def destroy
    @meal.destroy
    redirect_to restaurant_path(@restaurant), status: :see_other
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :category, :description, :price, :photo)
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
