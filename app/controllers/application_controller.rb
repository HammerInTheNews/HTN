class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :setup_search

  def setup_search
  	@q = Post.search(params[:q])
  end
end
