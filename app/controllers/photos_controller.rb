class PhotosController < ApplicationController
	before_action :authenticate_user!

	def create
	  @place = Place.find(params[:place_id])
	  @place.photos.create(photo_params.merge(user_id: current_user.id))
	end

	private

	def photo_params
		params.require(:photo).permit(:picture, :caption)
	end
end