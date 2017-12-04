class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to Coraline's Cafe"
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:alert] = "There was an issue with signing up."
      redirect_to '/signup'
    end
  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
