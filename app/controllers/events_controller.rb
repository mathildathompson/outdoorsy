class EventsController < ApplicationController


  def index

    @restaurants = []
    @meetups = []
    @parks = []

  end

  def create

    searchterm = params[:searchterm]
    result = request.location
    ipcity = result.data["city"]
    latlng = []

    if ipcity == ""
      latlng = Geocoder.coordinates("#{searchterm}, New York")
    else
      latlng = Geocoder.coordinates("#{searchterm}, #{ipcity}")
    end
    @meetups = []

    latitude = latlng[0]
    longitude = latlng[1]
    @restaurants = Restaurant.outdoor_restaurant_search(latitude,longitude)
    # binding.pry
    @meetups << Meetup.get_event("yoga",latitude,longitude)
    @meetups << Meetup.get_event("hiking",latitude,longitude)
    @meetups << Meetup.get_event("park",latitude,longitude)
    @meetups.flatten!
    # binding.pry
    @parks = OutdoorArea.near([latitude, longitude], 0.5)

  # binding.pry
  render :template => 'events/search', :content_type => 'text/javascript'

end



def newday
  @event = Event.create
  results = params[:results]

  results.each do |result|
    day = result.split(" ")
    type = day[0]
    # binding.pry
    case type
    when "restaurant"
      restaurant = Restaurant.find(day[1])
      restaurant.event_id = @event.id
      restaurant.save
    when "meetup"
      meetup = Meetup.find(day[1])
      meetup.event_id = @event.id
      meetup.save
    when "park"
      park = OutdoorArea.find(day[1])
      park.event_id = @event.id
      park.save
    else
      @event.name = day[0].to_s
      @event.save
    end
  end
    
    @restaurants = @event.restaurants
    # binding.pry
    @meetups = @event.meetups
    @parks = @event.outdoor_areas
    render :template => 'events/createevent', :content_type => 'text/javascript'
  end 

end
