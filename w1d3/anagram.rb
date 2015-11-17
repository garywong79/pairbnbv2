#compare two words, if the characters is the same and return true

def is_anagram?(word1,word2)
	word1.downcase.split(//).sort == word2.downcase.split(//).sort
end

def find_anagram?(word1, *words) # compared multiple words 
	results = []
	words.each do |word|
		results << word if is_anagram?(word1, word)
	end
	results
end

puts find_anagram?('cinema', 'iceman', 'pants', 'turtle', 'manice')

puts is_anagram?('cinema', 'iceman') # => true
puts is_anagram?('pants', 'pants')
puts is_anagram?('CiNemA', 'iceman') # => true
puts is_anagram?('acres', 'cares') # => true
puts is_anagram?('cares', 'scare') # => true
puts is_anagram?('scare', 'acres') # => true
puts is_anagram?('abcde2', 'c2abed') # => true
puts is_anagram?('pants', 'turtle') # => false
puts is_anagram?('123123', 'kjhasd') # => false
