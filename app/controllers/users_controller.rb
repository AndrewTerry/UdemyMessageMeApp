class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = "Welcome, #{@user.username}, you have successfully signed up!"
      redirect_to login_path
    else
      flash[:error] = @user.errors.full_messages[0]
      render 'new'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :password)
  end

end
