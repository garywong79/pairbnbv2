# write a method that takes two arguments
# return the index number, else nil

random_numbers = [6, 29, 18, 2, 72, 19, 18, 10, 37]

def linear_search(num, random_numbers)

	index = 0
	result = []

	until index == random_numbers.length
		index +=1
		if random_numbers[index] == num
		result = "#{index.to_i}"
		break
		end
	end

	if result == ""
		puts "nil"
	else
		puts result
	end
end


p linear_search(18, random_numbers) == 2