class My::BookingsController < ApplicationController
  def index
    @meals = current_user.restaurant.meals
    @bookings = Booking.where(meal_id: @meals)
  end
end
