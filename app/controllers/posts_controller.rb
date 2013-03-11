class PostsController < ApplicationController

	#after making index action, you need to make index.html.erb
	def index
	  #this accesses all the posts from the model 'Post' and stores them in @post
	  #the includes method ensures that comments will be loaded simultaneously with Posts
	  @posts = Post.includes(:comments).order("created_at DESC").limit(3)
	end

	#for you to see new posts, need a new action
	def new
	  @post = Post.new
	end

	def create
		@post = Post.new(params[:post])
		#if post is valid - go to index
	  	if @post.save
	  		#back to the index for you
	  		redirect_to(@post)
	  	else
	  		render :new #gives you the new view
	  	end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
 	  @post = Post.find(params[:id])
	end
	
	def update

      @post = Post.find(params[:id])

	  if @post.update_attributes(params[:post]) #overwrites and updates and saves, then returns "True"
        redirect_to posts_path
      else
        render :edit
      end

	end

	def destroy
	end

end
