# get user input - OK
# if user input match (case insensitive) the word in the dictionary 
# return the all words matches in the dictionary and return empty array if don't match
require 'byebug'

dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']

def anagrams_for(input, dictionary)



	result =[]

	 inputs = input.downcase.split(//).sort 
	 dictionary.each do |x|
	 	if x.downcase.split('').sort == inputs
	 		result<<x		 		
	 	end
	 end

	 result
	
end

p anagrams_for('acres', dictionary) == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('ACRES', dictionary) == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('Cesar', dictionary) == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('sacre', dictionary) == ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('etlsm', dictionary) == ['smelt', 'melts', 'etlsm']
p anagrams_for('unicorn', dictionary) == []






