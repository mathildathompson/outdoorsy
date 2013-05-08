require 'test_helper'
require 'shoulda'

class MeetupTest < ActiveSupport::TestCase
  context " of a meetup" do
	
	setup do
		@meetup=Meetup.new
		@results=@meetup.get_event( "hiking", 40.714623, -74.006605  )
	end

	should "Give me events from 11223" do
		assert_equal 129, @results.length
		
	end




  end
end
