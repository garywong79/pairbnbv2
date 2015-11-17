
@user = User.find(session[:user_id])

@question = @user.question.new(params[:question])

if @question.user == current_user