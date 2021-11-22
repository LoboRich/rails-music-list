class Artist < ApplicationRecord
	mount_uploader :avatar_url, AvatarUploader
	mount_uploader :cover_photo_url, AvatarUploader
end
