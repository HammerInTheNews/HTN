class CommentsController < ApplicationController
  def create
  	post = Post.find(params[:post_id])
  	@comment = post.comments.build(params[:comment])
	  	if @comment.save
	  		redirect_to post
	  	else
	  		redirect_to post, :notice => 'Thanks for the comment'
	  	end
  end
end
