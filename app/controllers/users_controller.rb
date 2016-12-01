class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_events = @user.events.paginate(page: params[:page], per_page: 5)
     current_user
    return
    
  end
  
  def edit
    @user = User.find(params[:id])
  end
end
