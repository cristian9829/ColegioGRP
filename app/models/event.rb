class Event < ApplicationRecord
	mount_uploader :img, PictureUploader
end
