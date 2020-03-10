class HomeController < ApplicationController
  before_action :set_post, only: [:show]
  def index
  end
  def about
  end
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  
end
