class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
     current_user
    return
    
  end
  
  def edit
    @user = User.find(params[:id])
  end
end
