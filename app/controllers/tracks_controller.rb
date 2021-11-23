class TracksController < ApplicationController
	before_action :set_track, only: %i[ show edit update destroy]

	def index
		@tracks = Track.all
	end

	def new
		@track = Track.new
	end

	def show
	end

	def create
		@track = Track.new(track_params)

		if @track.save
			redirect_to tracks_path, notice: "Track was successfully created."
		else
			flash[:error] = "Some errors encountered"
			render :new
		end
	end

	def edit
	end

	def update
		if @track.update(track_params)
			TracksHelper.update_credits_list(@track, track_params[:credits].reject { |e| e.empty? })
			redirect_to tracks_path, notice: "A track was successfully updated."
		else
			flash[:error] = "Some errors encountered"
			render :edit
		end
	end

	def destroy
		@track.destroy
		redirect_to tracks_path, notice: "Track was successfully deleted."
	end

	private

	def set_track
		@track = Track.find(params[:id])
	end

	def track_params
		params.require(:track).permit(:name, :url, :available, :credits => [])
	end
end
