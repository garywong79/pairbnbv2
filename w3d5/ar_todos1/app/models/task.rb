class Task < ActiveRecord::Base
	attr_reader :description
	attr_accessor :status

	def initialize(description, status ="[]")
		@description = description
		@status = status
	end
end
