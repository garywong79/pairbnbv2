# What classes do you need?

# Remember, there are four high-level responsibilities, each of which have multiple sub-responsibilities:
# 1. Gathering user input and taking the appropriate action (controller)
# 2. Displaying information to the user (view)
# 3. Reading and writing from the todo.txt file (model)
# 4. Manipulating the in-memory objects that model a real-life TODO list (domain-specific model)

# Note that (4) is where the essence of your application lives.
# Pretty much every application in the universe has some version of responsibilities (1), (2), and (3).
require 'csv'

class Task
	attr_reader :description
	def initialize(description)
		@description = description
	end
end

class List
	attr_reader :tasks
	def initialize(file)
		@tasks =[]
		@file = file
		load_tasks_from_csv
	end

	def load_tasks_from_csv
		return @tasks unless @tasks.empty?
		CSV.foreach(@file) do |row|
			@tasks << Task.new(row[0])
		end
	end

	def list
		@tasks.each_with_index do |task,index|
			puts "#{index+1}. #{task.description}"
		end
	end
end

list = List.new("todo.csv")

command = ARGV.shift

if command == "list"
	list.list
elsif command == "add"
	list.add
end