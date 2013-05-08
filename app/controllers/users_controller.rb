class UsersController < ApplicationController
	before_filter :authenticate_user!
  def index
  	@users = User.all
  end

  def show
  	@users = User.all
  end

  def create
  end
end
