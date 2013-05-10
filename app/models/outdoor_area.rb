class OutdoorArea < ActiveRecord::Base
attr_accessible :latitude, :longitude, :name, :address, :acreage

  def getparkinfo
    #imdb_data = HTTParty.get("http://www.omdbapi.com/?t=#{name}")
    parkdata = File.open("public/manhattanparks.json").read
    allparks = JSON(parkdata)
  end

  reverse_geocoded_by :latitude, :longitude 
  after_validation :reverse_geocode 

   # def latandlong
   #   "#{destination.name} #{self.latitude}"
   # end

  def self.parksearch(latitude, longitude)
    binding.pry
    
    parkresults = []
    output = OutdoorArea.near([latitude, longitude], 0.6)
    parkresults << output 
    parkresults.each do |p|
      parks = OutdoorArea.new
      parks.name = p["name"]
      binding.pry 
    end 
    return parkresults


  end 


end
