class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show]
  before_action :set_meal, only: %i[new create]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.meal = @meal
    @booking.user = current_user

    if @booking.save
      @chatroom = Chatroom.new(name: @booking.user, booking_id: @booking.id)
      @chatroom.save
      raise
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_meal
    @meal = Meal.find(params[:meal_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :number_people)
  end
end
