class FansController < ApplicationController
	def create
	    @fan = Fan.new(params[:fan])
	    if @fan.save
	      flash[:notice] = "Fan successfully created"
	    else
	      flash[:error] = "Try again."
	    end
	      redirect_to :back
	end
end