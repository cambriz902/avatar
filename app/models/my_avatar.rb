class MyAvatar < ActiveRecord::Base
	belongs_to :user

	has_attached_file :avatar_image
end