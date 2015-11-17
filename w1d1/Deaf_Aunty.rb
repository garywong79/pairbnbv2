def deaf_aunty
	
	puts "Hello SANDRA!" # Aunty ask
	
	n = 0 # put outside the loop because we don't want it to always reset back to 0 after gets.chomp

	while true
		sandra_input = gets.chomp
		if sandra_input == ""
			n+=1
		break if n == 2
		elsif sandra_input == "I love ya, aunty, but I've got to go."
			exit
		elsif sandra_input == sandra_input.downcase
			n=0 # this is to avoid space diff time will exit the program
			puts "HUH?! SPEAK UP, SANDRA!"
		else sandra_input == sandra_input.upcase
			n=0
			puts "NO, WE CAN'T DO THAT!"
		end
	end
end
	 	 


deaf_aunty # This is calling the methods
