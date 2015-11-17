# file names must be plurals
# redirect to -- will not render any old instance variable
# use erb: to be able to access the instance variable
# to -- erb file, wont' render variable
# each controller for each table

##*** if want to render a variable over, put "/?variable=#{@variable}""
#root

#######
enable :sessions
#####


GET "/" do #normally is the landing page


erb :"static/index" # the landing page	
end

#C-Create - return an HTML form for creating a new action/object
GET "/geocoder/new" do

end

#C-Create - create the new action/object
POST "/geocoder" do

	#setting 3 tables relationship
	# setting the user_id
	@question = Question.find(params[:question_id])
	@answer = @question.answers.create(answer_detail: params[:answer][:answer_detail], user_id: current_user.id)

end
#R-Index - display all the info
GET "/geocoder" do
	
end

#R-display the only and only geocoder resources
GET "/geocoder/:id" do #:id is a placeholder name, 
	#params[this must be is the same name as above]
end

#U-edit return an HTML form for editing the geocoder
GET "/geocoder/:id/edit" do
	question = Question.find(params[:id])
	if question.user == current_user
		erb :"static/geocoder_edit"
	else
		redirect to "/"
	end
end

#U-update - update the one andonly geocoder resource
PUT "/geocoder/:id" do

redirect to "/--the page you "
end

#U-delete the geocoder resource
DELETE "/geocoder/:id" do
	@question = Question.find(params[:id])
	@question.destroy
	redirect '/questions'
end