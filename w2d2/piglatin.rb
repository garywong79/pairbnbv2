# # Interation one

require 'byebug'

# def is_vowel(s)
# 	vowel = ["a","e","i","o","u"]
# 	vowel.include?(s)
# end



# consonant = ""

# current_index = ""


# puts "Hello, please say something!"
# user_input = gets.chomp.split(//)
# user_input.each_with_index do |letter, index|
# 	if is_vowel(letter)
# 	  current_index = index
# 	else
#     consonant += letter
# 	end
# 	#else put everything else in the_rest
# 	# p pig_latin
# end

# the_rest = user_input[current_index..-1].join("")

# p "#{the_rest}#{consonant}ay"



# Step
# Trial = ial + Tr+ay
# get user input
puts "Hello, please say something!"
user_input = gets.chomp
# check user input match the vowel (a,e,i,o,u)
index = user_input.index(/[aeiou]/) # this will generate index number that first match vowel
# take out the word first match vowel & words before vowels
consonants = user_input[0..(index - 1)] # start with 0(first words of the string), until vowel then move back one words yield result "Tr"

rest = user_input[index..-1] # this is take from the index(which is from vowel until last word)
# # add them together

puts "#{rest}#{consonants}ay"


