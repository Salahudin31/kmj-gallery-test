class Bus < ApplicationRecord
	mount_uploader :img_bus, ImgBusUploader # Tells rails to use this uploader for this model.   
	validates :no_bus, presence: true # Make sure the owner's name is present.   
end
