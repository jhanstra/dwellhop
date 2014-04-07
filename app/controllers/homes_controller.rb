class HomesController < ApplicationController
	before_action :signed_in_user
	
	def index
		@homes = Home.all
	end

	def new
		@home = Home.new
	end

	def create
    @home = current_user.homes.build(home_params)
		if @home.save
			flash[:success] = "Property successfully created"
      redirect_to edit_home_path(@home.id)
    else
      render 'new'
    end
	end

	def show
		@home = Home.find(params[:id])
	end

	def edit
		@home = Home.find(params[:id])
	end

	def update
		@home = Home.find(params[:id])
		if @home.update_attributes(home_params)
      flash[:success] = "Listing updated"
      redirect_to edit_home_path(@home.id)
    else
      render 'edit'
    end
	end

	def destroy
    @home = Home.find(params[:id])
    @home.destroy
    redirect_to current_user, :flash => { :success => "Property successfully deleted" }
  end

	private
		def home_params
      params.require(:home).permit(:address,:city,:state,:description,:zip_code,:list_price,:list_date,
      	:summary,:summary_header,:youtube_url)
    end

    def correct_user
      @home = current_user.homes.find_by(id: params[:id])
      redirect_to root_url if @home.nil?
    end


end
