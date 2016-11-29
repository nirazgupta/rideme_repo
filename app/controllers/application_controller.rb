class ApplicationController < ActionController::Base
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :middle_name, :last_name,
    :date_of_birth, :postal_address, :city, :state, :zip,
    :phone_number, :username, :email, :password, :provider, :uid) }
    
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :middle_name, :last_name,
    :date_of_birth, :postal_address, :city, :state, :zip,
    :phone_number, :username, :email, :password, :provider, :uid) }
  end
  
  protect_from_forgery with: :null_session

  
end
