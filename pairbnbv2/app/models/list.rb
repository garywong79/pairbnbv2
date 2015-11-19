class List < ActiveRecord::Base

belongs_to :user
mount_uploaders :images, ImageUploader

validates :price, :bathroom, :bedroom, :bed, :property_type, :room_type, presence: true

end
