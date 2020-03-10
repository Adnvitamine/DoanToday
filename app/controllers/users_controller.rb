class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @posts = @user.posts
    @photos = @user.photos
  end

  def edit
    
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :image, :postimage)
  end
  
end
