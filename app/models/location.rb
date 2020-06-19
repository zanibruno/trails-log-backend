class Location < ApplicationRecord
	validates :name, presence: true
	validates :postcode, presence: true

	has_many :trails
end
