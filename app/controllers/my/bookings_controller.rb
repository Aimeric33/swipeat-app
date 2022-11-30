class My::BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user)
  end
end
