class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :setup_search
  helper_method :recent_posts

  def setup_search
  	@q = Post.search(params[:q])
  end

  def recent_posts
  	@recent_posts ||= Post.limit(5).order("created_at desc")
  end
end
