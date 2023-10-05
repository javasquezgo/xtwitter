class Web::SessionsController < ApplicationController
  def new
    @users = User.new
  end

  def create 
    @user = User.find_by(user_name: user_params[:user_name])

    if @user && @user.password == user_params[:password]
      cookies[:user_id] = @user.id
      redirect_to users_path
    else
      flash.now[:notice] = 'Invalid email or password'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :password)
  end

end

