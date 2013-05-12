class CreateADayController < ApplicationController
	def index
		
	end

	def show
	@createaday = FriendCreateADay.create(:friend_id => params[:friend_id], :create_a_day_id => params[:id])
    @createaday.save!
		
	end

	def create
	
	end

end
