class HomeController < ApplicationController
  before_action :set_post, only: [:show]
  def index
  end
  def about
  end
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order(created_at: :desc)
    @posts = @posts.limit(3)
  end

  
end
