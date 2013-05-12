class DayOut < ActiveRecord::Base
  attr_accessible :date, :user_id, :outdoor_area_id

  belongs_to :user
  has_one :outdoor_area 


end
