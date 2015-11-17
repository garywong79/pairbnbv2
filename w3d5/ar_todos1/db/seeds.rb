require 'faker'
require_relative '../app/models/todo'
require_relative '../app/models/task'


 15.times do 
 	Todo.create(	:description => Faker::Hacker.say_something_smart,
 								:status => "[]"
 								)
 	end