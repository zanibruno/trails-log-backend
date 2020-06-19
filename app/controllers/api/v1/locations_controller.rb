class Api::V1::LocationsController < ApplicationController

	def index 
		locations = Location.all 
		render json: locations, include: {trails: {only: [:name, :length, :level, :description, :location_id]}}
	end
end
