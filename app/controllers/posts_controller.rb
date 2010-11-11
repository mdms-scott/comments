class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    @post.user_id = current_user.id
    
    if @post.save
      redirect_to root_path
    end
  end
  
  def reply
    @post = Post.new
    @post.reply_id = params[:reply_id]
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
end
