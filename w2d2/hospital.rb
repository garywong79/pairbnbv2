require 'byebug'

class Hospital
	#hospital name, hospital address, location, number of employees, number of patients
	def initialize 

	end

end

class User
	def Patients
	end

	def Employees
	end
end

class Record 
	attr_accessor :user_record

	def initialize
		@user_record ={}
	end

end

class Main
	def self.run!
		Record.new
		puts "Welcome to Misty River Hospital"
		puts "---------------------------------"
		puts "Please create your username: "
		new_username = gets.chomp
		puts "Please create your password: "
		new_password = gets.chomp
		p @user_record[new_username] = new_password
		
		put "end"
	end
		
end

Main.run!

