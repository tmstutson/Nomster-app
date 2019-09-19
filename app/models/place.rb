class Place < ApplicationRecord
	belongs_to :user
	geocode_by :address
	after_validation :geocode

	validates :name, presence: true
end
