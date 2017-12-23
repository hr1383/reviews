class ReviewsController < ApplicationController

	def get
		if params[:id] != nil 
			 reviews = Review.find(params["id"])
		  	 render :json => reviews			
		end
	end
end
