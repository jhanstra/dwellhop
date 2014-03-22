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
      redirect_to current_user
    else
      render 'new'
    end
	end

	def show
		@home = Home.find(params[:id])
	end

	def edit
	end

	def update
	end

	def destroy
    @home = Home.find(params[:id])
    @home.destroy
    redirect_to current_user, :flash => { :success => "Property successfully deleted" }
  end

	private
		def home_params
      params.require(:home).permit(:address,:city,:state,:description,:zip_code,:list_price)
    end

    def correct_user
      @home = current_user.homes.find_by(id: params[:id])
      redirect_to root_url if @home.nil?
    end


end
