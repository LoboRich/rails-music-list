class Album < ApplicationRecord
	validates :name, :released, :released_at, :cover_art_url, :kind, :length, presence: true 
	mount_uploader :cover_art_url, AvatarUploader
end
