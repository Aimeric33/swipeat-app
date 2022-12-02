class My::BookingsController < ApplicationController
  def index
    @meals = current_user.restaurant.meals
    @bookings = Booking.where(meal_id: @meals)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to my_bookings_path, status: :see_other
  end
end
