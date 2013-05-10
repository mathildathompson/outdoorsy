class UsersController < ApplicationController
	# before_filter :authenticate_user!
  def index
  	 

  end

  def show
  	
  end

#   def create
#     @friendship = Friendship.create(:friend_id => params[:friend_id], :user_id => current_user.id)
#     @friendship.save!
#     render :index
#   end
# end


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

  redirect_to users_path
  end


end
