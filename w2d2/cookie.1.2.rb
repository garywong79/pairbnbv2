# Answer These Questions:

# - What are essential classes?
# - What attributes will each class have?
# - What interface will each class provide?
# - How will the classes interact with each other?
# - Which classes will inherit from others, if any?


# Your code here

class Oven
	attr_reader :oven_batches

	def initialize
		@oventime = Time.now
		@oven_batches =[]
	end

	def add_cookie_to_oven(cookie)
		@oven_batches << cookie
	end
end

class Cookie

	def initialize(cookie_type)
		@cookie = rand(5..8)
	end

end

class Main
	def self.run!
		puts "Kichen Start!"
		oven = Oven.new
		puts "The time now is #{Time.now}"
		puts "What cookie would you like to bake?"
		cookie_type = gets.chomp
		cookie = Cookie.new(cookie_type)
		oven.add_cookie_to_oven(cookie)

		puts "Do you want to take out the cookie now?"


	end
end

Main.run!