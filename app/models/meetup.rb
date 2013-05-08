require "rmeetup"

class Meetup < ActiveRecord::Base
  
  def get_event(topic, latitude, longitude)
  	
  	RMeetup::Client.api_key = "10724b26c227570553b1c61111216c"
	results = RMeetup::Client.fetch(:events, {:topic => "#{topic}", :lat =>latitude, :lon =>longitude})
	
	results.each do |result|

  		meetup = Meetup.new
  		meetup.latitude = result.lat
  		meetup.longitude = result.lon
  		meetup.name = result.name
  		meetup.yes_rsvp_count = result.rsvpcount
  		meetup.event_url = result.event_url
  		meetup.save!
	
	end
  binding.pry
end




end
