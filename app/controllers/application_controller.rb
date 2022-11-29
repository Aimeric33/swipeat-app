class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def after_sign_in_path_for(_resource_or_scope)
    meals_path
  end
end
