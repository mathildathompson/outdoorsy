class Wifi < ActiveRecord::Base
	attr_accessible :name, :location, :address

  def getwifiinfo
  	wifidata = File.open("public/manhattanwifi.json").read
  	allwifi = JSON(wifidata)
  end 

end
