class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    p params, params[:user]
    @user = User.new(user_params)
    if @user.save
      render 'new'
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
