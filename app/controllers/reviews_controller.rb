class ReviewsController < ApplicationController

	def get
		if params[:id] != nil 
			 reviews = Review.find(params["id"])
		  	 render :json => reviews			
		end
	end
	def thrive
	end
	def rmw
	end
	def alamo
	end
end
