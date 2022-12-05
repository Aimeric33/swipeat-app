class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :destroy, :update]

  def index
    @favorites = Favorite.where(user_id: current_user).order(updated_at: :desc)
    @restaurants = []
    @favorites.each do |favorite|
      restaurant = favorite.meal.restaurant_id
      @restaurants << restaurant
    end
    @restaurants.uniq!
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user = current_user
    @meal = Meal.find(params["meal_id"])
    @favorite.meal = @meal
    @favorite.eaten = false
    @favorite.save
    redirect_to meals_path
  end

  def show
    @meal = @favorite.meal
  end

  def update
    @favorite.update(favorite_params)

    redirect_to request.referer
  end

  def destroy
    @favorite.destroy

    redirect_to favorites_path, status: :see_other
  end

  private

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:like, :superlike, :eaten)
  end
end
