class ReviewsController < ApplicationController
  before_action :set_review, only: %i[show]
  before_action :set_meal, only: %i[new create]

  def show
    @meal = @review.meal
    @review = Reviews.find(params)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.meal = @meal
    @review.user = current_user
    @favorite = Favorite.where(meal: @meal, user: current_user).first

    if @review.save
      redirect_to favorite_path(@favorite)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_meal
    @meal = Meal.find(params[:meal_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
