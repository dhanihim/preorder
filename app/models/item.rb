class Item < ApplicationRecord
	has_many :scheduled_item
	#has_one_attached :image
	mount_uploader :image, FileUploader
end
