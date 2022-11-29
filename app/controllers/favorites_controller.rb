class FavoritesController < ApplicationController
  before_action :set_meal, only: [:create]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.meal = @meal
    @booking.like = true
    @booking.superlike = false
    @booking.eaten = false
    @booking.save
    render "meals/index"
  end

  def show
  end

  def destroy
    @booking.destroy

    redirect_to bookings_path, status: :see_other
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
  end
end
