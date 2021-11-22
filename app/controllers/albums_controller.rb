class AlbumsController < ApplicationController
	before_action :set_album, only: %i[ show edit update destroy ]

	def index
		@albums = Album.all
	end

	def new
		@album = Album.new
	end

	def show
	end

	def create
		@album = Album.new(album_params)

		if @album.save
			redirect_to albums_path, notice: "Album was successfully created."
		else
			flash[:error] = "Some errors encountered"
			render :new
		end
	end

	def edit
	end

	def update
		if @album.update(album_params)
			redirect_to albums_path, notice: "An album was successfully updated."
		else
			flash[:error] = "Some errors encountered"
			render :edit
		end
	end

	def destroy
		@album.destroy
		redirect_to albums_path, notice: "Album was successfully deleted."
	end

	private

	def set_album
		@album = Album.find(params[:id])
	end

	def album_params
		params.require(:album).permit(:name, :permalink, :bio, :formed_at, :verified, :verified_at, :avatar_url, :cover_photo_url)
	end
end
