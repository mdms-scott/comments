class HomeController < ApplicationController
  
  def index
    @posts = Post.where("reply_id=?", 0)
  end
  
end
