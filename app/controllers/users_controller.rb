class UsersController < ApplicationController
	# before_filter :authenticate_user!
  def index

    if user_signed_in?
      @user = current_user.name
    else 
      redirect_to new_user_session_path
  end
end

  def show
 
    # @friendcreateaday = FriendCreateADay.create(:friend_id =>params[:friend_id]), :create_a_day_id => 1)
    # @friendcreateaday.save!
  	
  end

def create
     
     @flag = false
      current_user.friendships.each do |x|
        if x.friend_id.to_s == params[:friend_id]
          @flag = true
        else
        end
      end
  unless @flag == true
  @friendship = Friendship.create(:friend_id => params[:friend_id], :user_id => current_user.id)
  @friendship.save!
  end

  redirect_to events_path
  end


end
