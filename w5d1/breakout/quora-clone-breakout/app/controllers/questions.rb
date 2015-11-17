
# render new form
get '/questions/new' do
  erb :'questions/new'
end

# creating the question
post '/questions' do
  @user = current_user
  #way number 1
  @question = @user.questions.new(params[:question])
  # #2nd way
  # @question = Question.new(body: params[:question][:body],
  #   user_id: @user.id)
  # #3rd way
  # @question = Question.new(params[:body])
  # @user.questions << @question
  if @question.save
    redirect to "/questions/#{@question.id}"
  else
    erb :'questions/new'
  end
end

# show the question
get '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  erb :'questions/show'
end

# render the edit form
get '/questions/:id/edit' do
  @question = Question.find_by(id: params[:id])
  erb :'questions/edit'
end

# update the question
put '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  if @question.update(params[:question])
    redirect to "/questions/#{@question.id}"
  else
    erb :'questions/edit'
  end
end

# delete the question
delete '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  @question.destroy
  redirect to '/'
end