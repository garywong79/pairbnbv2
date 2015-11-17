
def piglatin
 # puts"state a word"
  puts "please enter a word"
  word = gets.chomp
  word = word.downcase

  if word.start_with?('a','e','i','o','u')
    return word
    else
    consonant = ""
    @count += 1
      until (word=="") || (word.start_with?('a','e','i','o','u'))
        consonant += word[0]
        word = word [1..-1]
      end
    word += consonant + "ay"
  end
end

piglatin





