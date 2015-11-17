get "/signup" do
	

	erb :"user/signup"
end

post "/signup" do

	@user = User.new(params[:user])

	if @user.save 
		@signup_succ = "You may login now!"
		redirect to "/?signup_succ=#{@signup_succ}"
	else
		erb :"user/signup"
	end

end

delete "/logout" do 
	session[:user_id] = nil
	redirect to "/"
end
