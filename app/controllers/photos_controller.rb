class PhotosController < ApplicationController
	before_action :signed_in_user

	def index
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = current_user.homes.photos.build(photo_params)   
		if @photo.save
			flash[:success] = "Photo uploaded"
      redirect_to @home
    else
      render 'new'
    end
  end

  def show
  	@photo = Photo.find(params[:id])
  end

	private

    def photo_params
      params.require(:photo).permit(:image,:name,:description,:photo_type)
    end


end
