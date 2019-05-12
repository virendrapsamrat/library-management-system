class Book < ApplicationRecord
	has_many :aurthors
	belongs_to :category
	mount_uploader :image, ImageUploader
	#mount_uploader :avatar, AvatarUploader

end
