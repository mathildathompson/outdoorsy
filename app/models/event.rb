class Event < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :user_id
  belongs_to :user 
  has_many :friends, :through => :eventfriends
  has_many :eventfriends
  has_many :restaurants
  has_many :meetups
  has_many :outdoor_areas

  geocoded_by :my_cool_geocoding_method

  def self.my_cool_geocoding_method(search)
    "#{search}"
  end

end
