helpers SessionHelper

get '/' do
  @user = current_user
  @questions = Question.all.order(created_at: :desc)
  erb :"static/index"
end

get '/home' do
  redirect to '/'
end