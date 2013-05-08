class CommentsController < ApplicationController
	def create 
		@comment = Comments.new(params[:comment])
		@comment.user_id = current.user.user_id
		@comment.save!
	end
end
