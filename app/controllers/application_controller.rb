class ApplicationController < ActionController::Base

  before_action :basic_auth, if: :production?
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource) 
    mypage_path
  end
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :family_name, :first_name, :family_name_kana, :first_name_kana, :birthday, :destination_family_name, :destination_first_name, :destination_family_name_kana, :destination_first_name_kana, :postal_code, :prefecture_id, :city, :house_number, :building_name, :phone_number])
  end

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials[:basic_auth][:user] &&
      password == Rails.application.credentials[:basic_auth][:pass]
    end
  end

end