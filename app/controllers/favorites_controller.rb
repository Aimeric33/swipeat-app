class FavoritesController < ApplicationController
  before_action :set_meal, only: [:create]

  def index
    @favorites = Favorite.where(user_id: current_user)
  end

  def create
    @favorites = favorites.new
    @favorites.user = current_user
    @favorites.meal = @meal
    @favorites.like = true
    @favorites.superlike = false
    @favorites.eaten = false
    @favorites.save
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
