class Album < ApplicationRecord
	validates :name, :released, :released_at, :cover_art_url, :kind, :length, presence: true 
	validates :name, uniqueness: true
	validates :length, numericality: { greater_than: 0 }
	mount_uploader :cover_art_url, AvatarUploader
end
