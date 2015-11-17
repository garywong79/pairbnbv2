get '/' do
	@questions = Question.all
	@signup_succ = params[:signup_succ]
	@answers = Answer.all
	@question_upvote = QuestionVote.all
  erb :"static/index"
end