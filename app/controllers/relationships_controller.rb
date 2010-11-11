class RelationshipsController < ApplicationController
  
  def new
    @relationship = @post.relationships.build
  end
  
  def create
    @post = Post.find_by_id(params[:id])
    @relationship = @post.relationships.build(:params[:reply_id])
    
    if @relationship.save
      redirect_to root_url
    else
      redirect_to root_url
    end
  end
  
end
