#main different type of cookies -D
#place batches of cookies in an oven -D
#remove cookies from the oven
#1) move cookies into and out of an oven
#2) multiple cookies wiht different baking time
#3) status of possible values
require 'byebug'


class Oven
	attr_accessor :oven

	def initialize(oven_time=0)
		@oven =[]
		oven_time = Time.now
	end



end

class Cookie
	def initialize(type,baking_time)
		@type = type
		@baking_time = baking_time
	end
end

class Main
	attr_accessor :cookies

	def self.run!
		@cookies_batches = []
		oven =[]
		puts "start the oven!"
			
		puts "What cookie do you want to bake?"
		type = gets.chomp

		puts "Set the baking time!"
		baking_time = gets.chomp
		rand(10..15).times do @cookies_batches << Cookie.new(type,baking_time)
		end
		oven << @cookies_batches
		while true
		time +=1
		if baking_time

	end

	
end
Main.run!





