class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @pagyposts, @posts = pagy(@user.posts.order("created_at DESC"), page_param: :page_posts, items: 5, params: { active_tab: 'stars' })
    @pagyphotos, @photos =pagy(@user.photos.order("created_at DESC"), page_param: :page_photos, items: 5, params: { active_tab: 'stars' })
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
