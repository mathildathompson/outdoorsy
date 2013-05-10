class OutdoorAreasController < ApplicationController
	def index
  	@parks = OutdoorArea.near([40.76013727, -73.96245931], 0.5)
    puts @parks 

  	# @current_user = user_session
  end

  def show#(latitude, longitude)
    
  end 

end
