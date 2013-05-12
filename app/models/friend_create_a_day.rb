class FriendCreateADay < ActiveRecord::Base
  attr_accessible :create_a_day_id, :friend_id

  belongs_to :friend, :class_name => 'User'
  belongs_to :create_a_day
  
end
