require 'test_helper'

class OutdoorAreaTest < ActiveSupport::TestCase
  context "An outdoor area" do 
  	setup do 
  		@area = OutdoorArea.new 
  		@results = @area.getparkinfo["data"] 
      binding.pry

  	end 


  		should "create outdoor areas" do 
  			assert_equal @results.length, 378
  		end 

  		should "get the name of the park" do 
  			assert_instance_of String, @results[0][11]
  		end 

      should "output some parks given a lat and long" do 
        OutdoorArea.parksearch(40.76013727, -73.96245931)
        
      end 

  end 
end
