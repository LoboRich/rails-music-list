class Album < ApplicationRecord
	mount_uploader :cover_art_url, AvatarUploader
end
