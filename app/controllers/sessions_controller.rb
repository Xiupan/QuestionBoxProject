class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by username: params[:username]
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @message = 'Username / Password Incorrect'
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
