class CreateADay < ActiveRecord::Base
  attr_accessible :user_id
  belongs_to :user 
  has_many :friends, :through => :friend_create_a_days
  has_many :friend_create_a_days
end
