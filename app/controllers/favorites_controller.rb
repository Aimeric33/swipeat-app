class FavoritesController < ApplicationController
  before_action :set_meal, only: [:create]

  def index
    @favorites = Favorite.where(user_id: current_user)
  end

  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.meal = @meal
    @favorite.like = true
    @favorite.superlike = false
    @favorite.eaten = false
    @favorite.save
    render "meals/index"
  end

  def show
  end

  def destroy
    @favorites.destroy

    redirect_to favoritess_path, status: :see_other
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
  end
end
