class Task < ActiveRecord::Base

	def self.list
		Task.all.each_with_index do |task,index|
			puts "#{index+1}. #{task.status} #{task.description} #{[task.date_created]}"
		end
	end

	def self.add(task_detail)
		Task.create(description: task_detail, status: "[]", date_created:Date.today)
		puts "New tasks: #{task_detail}, was created on #{Date.today}"

	end

	def self.delete(num)
		todo = Task.all
		todo.delete(todo[num-1])
		puts "Task No. #{num} #{todo[num-1].description} is deleted!"
	end

	def self.complete(num)
		todo = Task.all
		todo[num-1].status = "[X]"
		todo[num-1].save
		puts "Task No. #{num} #{todo[num-1].description} is completed!"

	end

	def self.summary
		total_tasks_created = Task.all.count
		task_completed = Task.where(status: "[X]").count
		task_outstanding = total_tasks_created - task_completed
		task_due_more_than_3_days = Task.where(date_created: 3.days.ago..Date.today).count
		puts "Total tasks created: #{total_tasks_created}"
		puts "Total completed task(s): #{task_completed}"
		puts "Outstanding task(s): #{task_outstanding}"
		puts "Number of tasks due more than 3 days : #{task_due_more_than_3_days}"
	end

	def self.sort
		Task.all.order(:date_created).each_with_index do |task,index|
			puts "#{index+1}. #{task.status} #{task.description} #{[task.date_created]}"
		end

	end

end
