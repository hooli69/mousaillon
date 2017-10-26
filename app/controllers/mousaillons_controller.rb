class MousaillonsController < ApplicationController
	def new
		@mousaillons = Mousaillon.new
	end

	def create
		post = Mousaillon.create(post_params)
		redirect_to mousaillon_path(post.id)
	end

	def show 
		@mousaillons = Mousaillon.find(params[:id])
	end

	def index
		@mousaillons = Mousaillon.all
	end

	def edit
		@mousaillons = Mousaillon.find(params[:id])
	end

	def update
		@mousaillons = Mousaillon.find(params[:id])
		@mousaillons.update(post_params)
		redirect_to mousaillons_path
	end

	def destroy
		@mousaillons = Mousaillon.find(params[:id])
		@mousaillons.destroy
		redirect_to mousaillons_path
	end

	private
	def post_params
		params.require(:mousaillon).permit(:username, :email)
	end
end