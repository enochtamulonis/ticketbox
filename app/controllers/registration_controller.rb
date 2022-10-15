class RegistrationController < ApplicationController
  def new;end

  def create
    if @user = User.create(registration_params)
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :show, status: 401
    end
  end

  private

  def registration_params
    params.require(:user).permit(:username, :email, :password)
  end
end
