
	def total_upvote
		answer_votes.where(upvote: 1).count
	end

	def self.authenticate(email,password)
		@user = User.find_by(email: email)
		if @user && password == @user.password
			@user
		else
			 nil
		end
	end

	