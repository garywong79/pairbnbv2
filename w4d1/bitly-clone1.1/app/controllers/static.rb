require 'byebug'

get '/' do
	@urls = Url.all
  erb :"static/index"
end

post '/urls' do
	@new_url = Url.new(long_url: params[:long_url]) # name = "long_url"
	# @new_url.shorten
	@new_url.save
	# redirect '/'
	redirect 'result'
end

get '/result' do

	@urls = Url.all
	erb :"static/result"
end

get '/:short_url' do
	url = Url.find_by(short_url: params[:short_url])
	url.click
	url.save
	redirect url.long_url
end