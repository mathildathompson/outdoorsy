require 'test_helper'

class OutdoorAreaTest < ActiveSupport::TestCase
  context "An outdoor area" do 
  	setup do 
  		@area = OutdoorArea.new 
  		@results = @area.getparkinfo["data"] 
  	end 


  		should "create outdoor areas" do 
  			assert_equal @results.length, 378
  		end 


  		
  end 
end
