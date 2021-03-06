class UsersController < ApplicationController
  def index
    # @users = User.all
    redirect_to root_path
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def edit

  end

  def show
    @user = User.find(params[:id])
  end

  def update

  end

  def destroy

  end

  private
  def user_params
    params.require(:user).permit(:id, :username, :password, :password_confirmation)
  end
end
