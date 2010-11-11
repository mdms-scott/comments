class Relationship < ActiveRecord::Base
  belongs_to :post
  belongs_to :reply, :class => 'Post'
end
