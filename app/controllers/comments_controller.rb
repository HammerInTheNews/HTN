class CommentsController < ApplicationController

def create
  	#comes here b/c of form for array
  	@comment = current_user.comments.build(params[:comment])
  	#needs to know the post and user b/c of association in model
  	@comment.post_id = params[:post_id]

  	if @comment.save
  		redirect_to posts_path
  	else
  		render 'new'
  	end
  end

  def new

  end

end
