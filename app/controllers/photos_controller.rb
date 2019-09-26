class PhotosController < ApplicationController
	def create
		@place = Place.find(params [:place_id])
	end


	private 

	def photo_params
		params.require(:photo).permit(:caption)
	end
end
