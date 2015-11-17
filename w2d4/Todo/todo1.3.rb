require 'csv'


class Task
	attr_reader :description
	attr_accessor :status
	def initialize (description, status ="[]")
		@description = description
		@status = status
	end
end

class List
	attr_reader :tasks
	def initialize(file)
		@file = file
		@tasks = []
		load_tasks_from_csv
	end

	def load_tasks_from_csv
		# return @tasks unless @tasks.empty?
		CSV.foreach(@file) do |row|
		task = Task.new(row[0])
		task.status = row[1] if row[1]
		@tasks <<task
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
		task = tasks.delete_at(index-1)
		puts "Deleted task no. #{index} #{task.description}"
		save
	end

	def complete(num)
		task = @tasks[num-1]
		task.status = "[X]"
		save
	end

end

list = List.new("todocsv1.csv")

puts "- Welcome, please select your command"
puts "- List all my tasks"
puts "- Add a new task"
puts "- Delete a task"
puts "- mark task complete"
command = ARGV.shift

if command == "list"
	list.list
elsif command == "add"
	list.add(ARGV.join(" "))
elsif command == "delete"
	list.delete(ARGV.first.to_i)
elsif command == "complete"
	list.complete(ARGV.first.to_i)
end