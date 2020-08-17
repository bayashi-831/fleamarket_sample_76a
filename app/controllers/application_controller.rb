class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_paramaters
    devise_paramater_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
