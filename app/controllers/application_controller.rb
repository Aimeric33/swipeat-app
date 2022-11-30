class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :set_restaurant_owner

  def after_sign_in_path_for(resource)
    if resource.owner
      restaurant_path(current_user.restaurant)
    else
      meals_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[email first_name last_name owner address])
  end

  # def set_restaurant_owner
  #   @restaurant = Restaurant.where(user_id: current_user.id)
  # end
end
