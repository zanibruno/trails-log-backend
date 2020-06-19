class Trail < ApplicationRecord

	validates :name, presence: true
	validates :level, presence: true
	validates :length, presence: true

	belongs_to :location
end
