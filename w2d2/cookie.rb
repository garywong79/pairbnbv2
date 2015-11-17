class Oven
	attr_accessor :time
	attr_reader :cooking_batches

	def initialize
		@cooking_batches = []
		@time =0
	end

	def add_cookie_to_oven(cookie)
		@cooking_batches << cookie
		cookie.record_entry_time(@time)
	end

	# def take_out_done_cookies_oven
	# 	@cooking_batches.each do |cookie|
	# 		@cooking_batches.delete(cookie) if cookie.cooked?(@time)
	# 	end
	# end

	def take_out_cookies_from_oven
		@cooking_batches.each do |cookie|
			puts cookie.cookie_status
		end
	end
end

class Cookie

	def initialize(cookie_name,baking_time)
		@cookie_num = rand(20..25)
		@cookie_name = cookie_name
		@baking_time = baking_time.to_i
	end

	def record_entry_time(time)
		@begin_cooking_time = time
	end

	def cookie_status(time)
		different = time - @begin_cooking_time
		if different <= 5
			"doughy"
		elsif different <(@baking_time -1)
			"almost ready"
		elsif different>(@baking_time+1)
			"burnt"
		else
			"ready"
		end				
	end

	# def cooked?(oven_time)
	# 	oven_time - @begin_cooking_time >= baking_time
	# end
end


class Main
	def self.run!
		puts "Kitchen Open!"
		oven = Oven.new

		while true
			puts "the time is now #{oven.time}"
			puts "do you want to add a cookie?"
			input = gets.chomp

			if input == "y"
				puts "What cookie do you want to cook?"
				cookie_name = gets.chomp
				puts "how long does it take?"
				baking_time = gets.chomp
				cookie = Cookie.new(cookie_name,baking_time)
				oven.add_cookie_to_oven(cookie)
			end

			oven.time +=1
		
			oven.cooking_batches.each do |batch|
				batch.cookie_status(oven.time)
			end

			puts "do you want to take out the cookie now?"
			input = gets.chomp
			until input == "y"
				oven.take_out_cookies_from_oven
			end
		end
	end
end

Main.run!
