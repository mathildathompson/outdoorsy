class Wifi < ActiveRecord::Base

  def getwifiinfo
  	wifidata = File.open("public/manhattanwifi.json").read
  	allwifi = JSON(wifidata)
  end 

end
