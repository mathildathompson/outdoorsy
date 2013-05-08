class UsersController < ApplicationController
	# before_filter :authenticate_user!
  def index
  	@users = User.all
  	# @current_user = user_session
  end

  def show
  	@users = User.all
  end

  def create
  end
end
