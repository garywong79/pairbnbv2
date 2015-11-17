class HomeController < ApplicationController
	def index
		@user = User.all
		@list = List.all
	end
end
