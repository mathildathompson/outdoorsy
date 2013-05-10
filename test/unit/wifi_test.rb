require 'test_helper'

class WifiTest < ActiveSupport::TestCase

	context "An outdoor area" do 
		setup do 
			@wifi = Wifi.new 
			@results = @wifi.getwifiinfo["data"] 
		end 


		should "find wifi locations" do 
			assert_equal @results.length, 265
		end 
	end 
end
