enable :sessions
#####


#C-Create - return an HTML form for creating a new action/object
get "properties/:property_id/bookings/new" do
byebug
@user = User.find(params[:user_id])

erb :"static/properties"
end

#C-Create - create the new action/object
# post "/properties/:user_id" do

# 	@user = User.find(params[:user_id])
# 	@property = @user.properties.create(property_detail: params[:property][:property_detail], property_price: params[:property][:property_price], user_id: current_user.id)

# 	erb :"static/index"
# end
# #R-Index - display all the info
# get "/properties" do
# 	@user = User.find(session[:user_id])
# 	@property = Property.all
# 	erb :"static/index"
# end

# #R-display the only and only geocoder resources
# get "/geocoder/:id" do #:id is a placeholder name, 
# 	#params[this must be is the same name as above]
# end

# #U-edit return an HTML form for editing the geocoder
# get "/properties/:property_id/edit" do
# 	@property = Property.find(params[:property_id])
# 	if @property.user == current_user
# 		erb :"static/property_edit"
# 	else
# 		redirect to "/"
# 	end
# end

# #U-update - update the one andonly geocoder resource
# put "/properties/:property_id" do

# 	@property = Property.find(params[:property_id])
# 	@property[:property_detail] = params[:property][:property_detail]
# 	@property[:property_price] = params[:property][:property_price]
# 	@property.save
# 	redirect to "/properties"
# end

# #U-delete the geocoder resource
# delete "/properties/:property_id" do
# 	@property = Property.find(params[:property_id])
# 	@property.destroy
# 	redirect to "/properties"
# end