# What classes do you need?

# Remember, there are four high-level responsibilities, each of which have multiple sub-responsibilities:
# 1. Gathering user input and taking the appropriate action (controller)
# 2. Displaying information to the user (view)
# 3. Reading and writing from the todo.txt file (model)
# 4. Manipulating the in-memory objects that model a real-life TODO list (domain-specific model)

# Note that (4) is where the essence of your application lives.
# Pretty much every application in the universe has some version of responsibilities (1), (2), and (3).
require 'csv'
require 'byebug'


class Task
	attr_reader :description
	attr_accessor :status
	def initialize(description, status = "[]")
		@description = description
		@status = status
	end
end

class List
	attr_reader :tasks
	def initialize(file)
		@tasks = []
		@file = file
		load_tasks_from_csv
	end

	def load_tasks_from_csv
		return @tasks unless @tasks.empty?
		CSV.foreach(@file) do |row|
			task =  Task.new(row[0])
			task.status = row[1] if row[1] # because initially row[1] is nothing
			@tasks << task
 		end		
	end

	def list
		@tasks.each_with_index do |task, index|
			puts "#{index+1}. #{task.status} #{task.description}"
		end
	end

	def add(description)
		@tasks << Task.new(description)
		save
	end

	def save
		CSV.open(@file, "wb") do |csv|
			@tasks.each do |task|
				csv << [task.description, task.status]
			end
		end
	end

	def delete(index)
		tasks.delete_at(index-1)
		puts "Deleted #{task.description}"
		save
	end

	def complete(num)
		task = @tasks[num - 1]
		task.status = "[X]"
		save
	end
end

list = List.new("todo.csv")

puts "- Welcome back, please select your command"
puts "- List all my tasks"
puts "- Add a new task"
puts "- Delete a task"
puts "- Mark task complete"
command = ARGV.shift

if command == "list"
	list.list
elsif command == "add"
	list.add(ARGV.join(" "))
elsif command == "delete"
	list.delete(ARGV.first.to_i)
elsif command == "completed"
	list.complete(ARGV.first.to_i)
end

