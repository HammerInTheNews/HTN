class PostsController < ApplicationController
before_filter :authenticate_user!, except: [:index, :show]

	def get_post
		Post.find(params[:id])
	end
	#after making index action, you need to make index.html.erb
	def index
	  #this accesses all the posts from the model 'Post' and stores them in @post
	  #the includes method ensures that comments will be loaded simultaneously with Posts
	  if params[:tag]
        @posts = Post.includes(:comments).order("created_at DESC").tagged_with(params[:tag]).page(params[:page]).per(21)
	  else	
	    @posts = Post.includes(:comments).order("created_at DESC")
	  end
	  


		@q = @posts.search(params[:q])
		@posts = @q.result(:distinct => true).page(params[:page]).per(21)
	  #This enables atom feeds
	  # respond_to do |format|
   #      format.html
   #      format.atom
   #      format.rss { render :layout => false } #index.rss.builder
   #    end
	end

	#for you to see new posts, need a new action
	def new
	  @post = Post.new
	end

	def create
		   #protects post
		@post = current_user.posts.build(params[:post])
		   #if post is valid - go to index
	  	if @post.save
	  		
	  		#back to the index for you
	  	   redirect_to posts_path
	  	else
	  		render :new #gives you the new view
	  	end
	end

	def show
		@post = get_post
		@posts = Post.includes(:comments).order("created_at DESC").limit(5).offset(1)
	end

	def edit
 	  @post = get_post
	end
	
	def update

      @post = get_post

	  if @post.update_attributes(params[:post]) #overwrites and updates and saves, then returns "True"
        redirect_to post_path
      else
        render :edit
      end

	end

	def destroy
		@post = get_post.destroy
		redirect_to posts_path
	end


end
