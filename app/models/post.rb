class Post < ActiveRecord::Base
  
  belongs_to :user
  
  belongs_to :post, :class_name => "Post", :foreign_key => "post_id"
  has_many :replies, :class_name => "Post", :foreign_key => "reply_id"
  
  def self.replies_are
    @replies = Post.where("reply_id=?", post.id)
  end

end
