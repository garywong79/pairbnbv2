class Todo < ActiveRecord::Base

	def self.list

		Todo.all.each_with_index do |task, index|	
		puts "#{index+1}. #{task.status} #{task.description} "
		end
	end

	def self.add(task_detail)
		todo = Todo.create(description: task_detail, status: "[]")
		puts "created a new task: #{task_detail}"
	end

	def self.delete(num)
		task = Todo.all
		task.delete(task[num-1])
		puts "task no: #{num}. #{task[num-1].description} was deleted!"
	end

	def self.complete(num)
		task = Todo.all
		task[num-1].status = "[X]"
		task[num-1].save
		puts "task no: #{num} #{task[num-1].description} was set to complete!"
	end

end