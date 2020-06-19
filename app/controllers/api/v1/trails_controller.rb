class Api::V1::TrailsController < ApplicationController

	before_action :set_location, only: [:index]

	def index 
		@trails = @location.trails
		render json: @trails
	end 

	def show 
		trail = Trail.find_by(id: params[id])
		render json: trail
	end

	def create 
		trail = @location.trail.build(trails_params)
		if trail.save
			render json: trail 
		else 
			render json: {error: "Trail not Created"}
		end 
	end 

	def destroy 
		trail = Trail.find_by(id: params[:id])
		trail.destroy
	end 

	def update

	end 

	private

	def set_location
		@location = Location.find_by(id: params[:location_id])
	end 

	def trails_params
		params.require(:trail).permit(:name, :length, :level, :description, :locatin_id)
	end 
end
