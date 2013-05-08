class OutdoorArea < ActiveRecord::Base
attr_accessible :latitude, :longitude, :name, :address, :acreage

  def getparkinfo
    #imdb_data = HTTParty.get("http://www.omdbapi.com/?t=#{name}")
    parkdata = File.open("public/manhattanparks.json").read
    allparks = JSON(parkdata)
  end


  # def jsonpull 

  # 	@newpark = OutdoorArea.new 


  # 	json = ActiveSupport::JSON.decode(File.read('public/manhattanparks.json')) 
  # 	json["data"].each do |a| 
  # 		@newpark.name = a[0][11]

  # 		@newpark.acreage = a[0][13]
  # 			# :address => a[i][16][0],
  # 			# :latitude => a[i][16][1], 
  # 			# :longitude => a[i][16][2])
  # 	end
  # end 


end
