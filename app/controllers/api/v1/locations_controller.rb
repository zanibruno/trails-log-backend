class Api::V1::LocationsController < ApplicationController

	

	def index 
		@locations = Location.all 
		render json: @locations, include: {trails: {only: [:name, :length, :level, :description, :location_id]}}
	end

	def create
		location = Location.new(location_params)
		if location.save
			render json: location 
		else 
			render json: {error: "Location no created"}
		end
	end 

	def show
		location = Location.find+by(id: params[:id])
		render json: location
	end 

	def destroy 
		location = Location.find_by(id: params[:id])
		location.destroy
	end 

	private 


	def location_params
		params.require(:location).permit(:postcode, :name)
	end 
end
