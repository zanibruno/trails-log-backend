class Api::V1::TrailsController < ApplicationController

	def index 
		location - Location.all 
		trails = location.trails
		render json: trails
	end 
end
