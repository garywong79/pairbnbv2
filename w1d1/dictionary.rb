require "byebug"


def dictionary_sort(arr)
  # Your code here to sort the array
 
dictionary =[]
puts "Type a word:"
 while true
 
  user_input = gets.chomp
  dictionary << user_input
  if user_input == ""
  	dictionary.delete("")
  	dictionary.sort_by{|x|[x.downcase, x]}.reject { |c| c.empty? }
  	puts dictionary
  break
 	else
	puts "Type another word (or press enter to finish):"
	end
end

end

dictionary_sort("begin")