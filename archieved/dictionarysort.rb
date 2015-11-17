word = []

def dictionary_sort(word)
word.sort
end
	while true
		puts "Please enter your words!"
		input = gets.chomp
	
		if input == ""
		break
		else
		word << input
		end
	end
p dictionary_sort(word)


