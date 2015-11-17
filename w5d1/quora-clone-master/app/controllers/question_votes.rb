post "/questions/:id/question_upvotes" do
	@question = Question.find_by(id: params[:id])
	@question_vote = @question.question_votes.find_by(user_id: current_user.id)

	if @question_vote && @question.question_votes.last.vote_value == -1
		# @question_vote.vote_value = 1
		@question_vote = @question.question_votes.create(vote_value: 1)
	
	elsif @question_vote && @question.question_votes.last.vote_value == 1
	
	elsif !@question_vote
		@question_vote = @question.question_votes.create(vote_value: 1, user_id: current_user.id)
	
	else
		redirect to "/"
	end 
redirect to "/"
end

post "/questions/:id/question_downvotes" do
	@question = Question.find_by(id: params[:id])
	@question_vote = @question.question_votes.find_by(user_id: current_user.id)

	# if haven't vote & total_vote > 0
	if @question.total_vote >0 && @question_vote && @question.question_votes.last.vote_value == 1

			@question_vote = @question.question_votes.create(vote_value: -1)
	##### update will change value to -1 so total value will change to -1
	
	elsif @question.total_vote >0 && @question_vote && @question.question_votes.last.vote_value == -1
	
	elsif @question.total_vote >0 && !@question_vote

		@question_vote = @question.question_votes.create(vote_value: -1, user_id: current_user.id)
	
	else

			redirect to "/"
	end
	redirect to "/"
end
	# if @question.total_vote >0 
	# 	vote = @question.question_votes.create(vote_value: -1, user_id: current_user.id)
	# # if voted downvote before & total vote >0
	# elsif @question.total_vote >0 && @question_vote && @question_vote.vote_value = -1
	# # if voted upvote before 
	# elsif @question.total_vote >0 && @question_vote && @question_vote.vote_value = 1

	# 	@question_vote.update(vote_value: -1)
		



