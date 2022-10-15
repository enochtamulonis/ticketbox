class AuthController < ApplicationController
  def show
  end

  def create
    if @user = User.authenticate(params[:login], params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @errors = ["Your login was incorrect"]
      render :show, status: 401
    end
  end
end
