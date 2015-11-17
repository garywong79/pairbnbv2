get "/questions/new" do
	
	erb :"question/new_question"
end

post "/questions" do

	@user = current_user
	@question = @user.questions.new(params[:question])

	if @question.save
		redirect to "/"
	else
		erb :"question/new_question"
	end

end

get "/questions/:id" do

	@question = Question.find_by(id: params[:id])
	@answers = @question.answers

	erb :"question/show_question"
end

get "/questions/:id/edit" do

	@question = Question.find_by(id: params[:id])
	erb :"question/edit_question"
end


put "/questions/:id/update" do 
	@question = Question.find_by(id: params[:id])
	# @question[:question_detail] = params[:question][:question_detail]
	@question.question_detail = params[:question][:question_detail]
	if @question.save
		redirect to "/"
	else
		erb :"question/edit_question"
	end

end

delete "/questions/:id/delete" do
	@question = Question.find_by(id: params[:id])
	@question.destroy
	redirect "/"
end