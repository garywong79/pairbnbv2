class Property < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_many :comments, :dependent => :destroy
	has_many :bookings, :dependent => :destroy
	belongs_to :user
end
