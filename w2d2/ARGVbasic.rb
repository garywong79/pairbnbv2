user_input = ARGV


user_input.map! do |input|
  # puts "word #{word}"
  if input =~ /^[AEIOUaeiou]/
    input
  else

    vowel = word.match(/^[^AEIOUaeiou]*/).to_s
    consonant = input.sub(/^[^AEIOUaeiou]*/,"")
    consonant << vowel << 'ay'

    #converted_words << word

  end

  #puts converted_words.inspect

end
puts sentence.inspect
