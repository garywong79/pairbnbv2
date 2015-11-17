get "/questions/:id/answer/new" do
	@question = Question.find_by(id: params[:id])
	erb :"answer/new_answer"
end

post "/questions/:id/answer" do
	@question = Question.find_by(id: params[:id])
	@answer = @question.answers.new(params[:answer])
	# because is params,1) use @answer.user << current_user 
	#2) use hidden field in erb file 
	#3) define (answer_detail: params[:answer][:answer_detail], user_id: current_user.id)

	if @answer.save
		redirect to "/questions/#{@question.id}"
	else
		erb :"answer/new_answer"
	end
end

get "/answers/:id" do
	@answer = Answer.find_by(id: params[:id])
	
	erb :"answer/show_answer"
end

get "/answers/:id/edit" do

	@answer = Answer.find_by(id: params[:id])
	erb :"answer/edit_answer"
end

put "/answers/:id" do
	
	@answer = Answer.find_by(id: params[:id])
	@answer.answer_detail = params[:answer][:answer_detail]
	if @answer.save
		redirect to "/questions/#{@answer.question.id}"
	else
		erb :"answer/edit_answer"
	end

end

delete "/answers/:id" do
	@answer = Answer.find_by(id: params[:id])
	@answer.destroy
	redirect to "/questions/#{@answer.question.id}"
end

