class API::V1::UsersController < ApplicationController

  before_filter :get_user, except: [:create, :index]
  
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    save_or_render_error(@user)
  end

  def update
    @user.attributes = user_params
    save_or_render_error(@user)
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email)
  end

end