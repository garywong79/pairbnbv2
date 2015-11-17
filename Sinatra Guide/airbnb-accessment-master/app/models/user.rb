class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_many :properties, :dependent => :destroy
	has_many :bookings, :dependent => :destroy
	has_many :comments, :dependent => :destroy

	validates :email, presence: true, uniqueness: true
	validates :name, presence: true
	validates :password, presence: true

	def self.authenticate(email,password)
		@user = User.find_by(email: email)
		if @user && password == @user.password
			@user
		else
			 nil
		end
	end

end
