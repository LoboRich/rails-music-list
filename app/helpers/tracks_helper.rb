module TracksHelper
	def self.update_credits_list(track, list)
		track.credits = []
		track.credits = list
		track.save!
	end
end
