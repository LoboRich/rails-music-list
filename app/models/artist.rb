class Artist < ApplicationRecord
	validates :name, :permalink, :bio, :formed_at, presence: true
	validates :name, uniqueness: true
	mount_uploader :avatar_url, AvatarUploader
	mount_uploader :cover_photo_url, AvatarUploader
end
