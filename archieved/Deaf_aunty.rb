# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby deaf_aunty.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Aunty.

# You'll probably want to write other methods, but this 
# encapsulates the core Aunty logic
def deaf_aunty

	n = 0
	
	while true
	puts "What do you want to say to your aunty?"
	sandra_speak = gets.chomp

	if sandra_speak == ""
	n +=1
	break if n ==2
	elsif  sandra_speak == "I love ya, aunty, but I've got to go"
	exit
	elsif sandra_speak == sandra_speak.downcase	
	puts "HUH?! SPEAK UP, SANDRA!"
	else sandra_speak == sandra_speak.upcase
	puts "NO, WE CAN'T DO THAT!"
	end
	end
end



# Run our method
deaf_aunty