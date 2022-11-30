class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :destroy, :update]

  def index
    @favorites = Favorite.where(user_id: current_user).order(created_at: :desc)
  end

  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.meal = @meal
    # @favorite.like = true
    # @favorite.superlike = false
    @favorite.eaten = false
    @favorite.save
    render "meals/index"
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
