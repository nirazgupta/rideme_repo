class RegistrationsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
private

  def sign_up_params
    params.require(:user).permit( :email, :password, :password_confirmation , :role)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password , :role , :name)
  end

end
