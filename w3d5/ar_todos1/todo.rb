require_relative 'config/application'
require_relative 'app/models/todo'
require_relative 'app/models/task'

# p Todo.column_names
# p Todo.find(19)

command = ARGV.shift.downcase

case command

when 'list'
	Todo.list
when 'add'
	Todo.add(ARGV.join(" "))
when'delete'
	Todo.delete(ARGV.join(" ").to_i)
when "complete"
	Todo.complete(ARGV.join(" ").to_i)
when "summary"
	Todo.summary
else
	puts "Invalid Command."
	puts "Available Command as below:"
	puts "[List] - list all your tasks"
	puts "[Add] task name - create new task"
	puts "[Complete] task no - set task to complete"
	puts "[Delete] task no - delete the task"
	puts "[SUMMARY] - display tasks summary"

end	


# puts "Put your application code in #{File.expand_path(__FILE__)}"
