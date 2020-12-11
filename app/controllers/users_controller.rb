class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id]) 
  end

  def create
    User.create(user_params)
    redirect_to '/users'
  end

  def new
    @user = User.new
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/users'
  end

  def home
    @user = User.find(params[:id]) 
  end

  private
  def user_params
    params.require(:user).permit(:name, :age, :chara, :height, :birth_date)
  end

end
