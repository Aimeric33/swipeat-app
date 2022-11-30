class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :destroy]

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
    @meal = @favorite.meal
  end

  def update
  end

  # def eaten(favorite)
  #   if favorite.eaten
  #     btn_class = "btn btn-primary"
  #   else
  #     btn_class = "btn btn-secondary"
  #   end

  #   link_to favorite_path(favorite), class: btn_class, :method => :patch do
  #     favorite.eaten = true
  # end

  def destroy
    @favorite.destroy

    redirect_to favorites_path, status: :see_other
  end

  private

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end
end
