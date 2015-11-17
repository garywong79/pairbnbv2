class List < ActiveRecord::Base

belongs_to :user

validates :price, :bathroom, :bedroom, :bed, :property_type, :room_type, presence: true

end
