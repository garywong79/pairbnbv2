class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_many :questions
	has_many :answers

	validates :password, presence:true
	validates :email, presence:true, uniqueness: true,
    format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\W]+\z/ }

	def self.authenticate(email,password)
		user = User.find_by(email: email)
		if user && user.password == password
			return user
		else
			nil
		end
	end
	
end
