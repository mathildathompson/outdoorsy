class OutdoorArea < ActiveRecord::Base


  def getparkinfo
    #imdb_data = HTTParty.get("http://www.omdbapi.com/?t=#{name}")
    parkdata = File.open("public/manhattanparks.json").read

    allparks = JSON(parkdata)

  end


end
