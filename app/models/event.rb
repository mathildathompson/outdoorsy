class Event < ActiveRecord::Base
  # attr_accessible :title, :body

  geocoded_by :my_cool_geocoding_method

  def self.my_cool_geocoding_method(search)
    "#{search}"
  end

end
