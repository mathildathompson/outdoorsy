class Meetup < ActiveRecord::Base
  attr_accessible :lat,
  :lon,
  :name,
  :yes_rsvp_count,
  :event_url
 

  def self.get_event(topic, latitude, longitude)
  	@meetupresults = []
  	RMeetup::Client.api_key = "10724b26c227570553b1c61111216c"
    @results = RMeetup::Client.fetch(:events, {:topic => "#{topic}", :lat =>latitude, :lon =>longitude})
    @results.each do |result|

      meetup = Meetup.new
      meetup.latitude = result.lat
      meetup.longitude = result.lon
      meetup.name = result.name
      meetup.yes_rsvp_count = result.rsvpcount
      meetup.event_url = result.event_url
      @meetupresults << meetup

    end
    @meetupresults
      
  end

end


