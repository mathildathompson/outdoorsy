class OutdoorArea < ActiveRecord::Base


   def getparkinfo
    #imdb_data = HTTParty.get("http://www.omdbapi.com/?t=#{name}")
    parkdata = File.open("public/manhattanparks.json").read

    allparks = JSON(parkdata)

    binding.pry
    # Create a Movie object...

    # Fill in the attributes...

    # Store me in a SQLite3 database...    
  end
end
