class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :destroy, :update]

  def index
    @favorites = Favorite.where(user_id: current_user).order(updated_at: :desc)
    @restaurants = Restaurant.joins(:meals).where(meals: { id: @favorites.pluck(:meal_id)}).distinct
    @meals = Meal.joins(:favorites).where(favorites: @favorites)

    @markers = @restaurants.geocoded.map do |restaurant| {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
        image_url: helpers.asset_url("restaurant.png")
      }
    end
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
