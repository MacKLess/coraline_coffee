class SessionController < ApplicationController
  def create
    @user = User.authenticate(params[:email]), params[:password]
    if @user
      flash[:notice] = "Welcome! Pour yourself a cuppa Joe!"
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:alert] = "There was an issue with your signin, please reattempt."
      redirect_to signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Thank you for visiting Coraline's Cafe. Please visit us again!"
    redirect_to '/'
  end 
end
