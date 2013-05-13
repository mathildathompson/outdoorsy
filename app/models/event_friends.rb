class EventFriends < ActiveRecord::Base
  attr_accessible :event_id, :friend_id
  belongs_to :friend, :class_name => 'User'
  belongs_to :event
end
