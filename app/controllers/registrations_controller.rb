class RegistrationsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
private

  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
    params.require(:user).permit(:first_name, :middle_name, :last_name,
    :date_of_birth, :postal_address, :city, :state, :zip,
    :phone_number, :username, :provider, :uid, :email, :password, :password_confirmation , :role)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :middle_name, :last_name,
    :date_of_birth, :postal_address, :city, :state, :zip,
    :phone_number, :username, :provider, :uid, :email, :password, :password_confirmation, :current_password , :role , :name)
  end
  
  

end
