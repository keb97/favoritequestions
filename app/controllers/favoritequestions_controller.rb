class FavoritequestionsController < ApplicationController
	def index
	end
	def new
		@favoritequestion = Favoritequestion.new
	end
	def create
		@favoritequestion = Favoritequestion.new(params[:favoritequestion]) 
		if @favoritequestion.save
			flash[:notice] = "Favorite Question has been created."
			redirect_to @favoritequestion
		else
			# nothing, yet
		end
	end
	def show
		@favoritequestion = Favoritequestion.find(params[:id])
	end
	
end

