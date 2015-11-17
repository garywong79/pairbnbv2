enable :sessions

get '/' do

if params[:user_id]
	@user = User.find(params[:user_id])
end

if params[:propert_id]
	@property = Property.find(params[:property_id])
end

erb :"static/index"
 
end