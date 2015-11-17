#import csv
#Design the controller
#implement the list command
#implement the add comamand
#implement the delete command

require 'csv'
require 'byebug'

class Todo
	attr_reader :file

	def initialize(file)
		@file = file
		@task =[]
		load_task
	end

	def load_task
		CSV.foreach("@file") do |row|
		p row
		end
	end

	def list
		@task.each_with_index do |task,index|
		p task, index
		end
	end

end


p todo = Todo.new("todocsv1.csv")


# puts "Hi, What would you like to do today?"
# puts "Please select your option"

# case option
# when list
# end 