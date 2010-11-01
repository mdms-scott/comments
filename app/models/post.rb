class Post < ActiveRecord::Base
  
  belongs_to :user
  
  has_many :relationsips
  has_many :replies, :through => :relationships
  
end
