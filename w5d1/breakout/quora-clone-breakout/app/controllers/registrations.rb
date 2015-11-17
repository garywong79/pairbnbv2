get '/signup' do
  erb :'registrations/signup'
end

post '/signup' do
  # params[:user] == {"email"=>"sdfdsf@sdf.com", "password"=>"123123"}
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect to '/'
  else
    erb :'registrations/signup'
  end
end