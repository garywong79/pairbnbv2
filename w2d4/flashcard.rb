# load the txt file - Y
# shuffle the card - Y
# guess & verify
# replay or exit the game
#design interface
require 'byebug'

class Card
	attr_accessor :question, :answer, :card

	def initialize(question,answer)
		@question = question
		@answer = answer
	end


end

class Main
	attr_accessor :file, :deck, :question, :answer
	

	def initialize(file)
		card_array =[]
		@question =[]
		@answer = []
		x = 2
		@deck = []

		f = File.open(file).map do |line|
			card_array << line.chomp
			card_array.reject!{|line| line.to_s.empty?}
		end
		card_array.each_index do |index|
			question << card_array[index] if index % x ==0
		end
		card_array.each_index do |index|
			answer << card_array[index] if index % x !=0
		end
		question.length.times do |x|
			deck << Card.new(question[x], answer[x])
		end	
	end

	def shuffle!
		@deck.shuffle
	end

	def draw
		@deck.sample
	end

	def run
		while true
			shuffle!
			card = draw
			puts "Question: #{card.question}" 
			correct = false
			until correct
				user_input = gets.chomp
				if user_input == card.answer
					correct = true
					puts "Correct"
				elsif 
					user_input == "exit"
					exit
				elsif
					puts "Incorrect! Try again."
				end
			end
		end
		
	end
end




main = Main.new("flashcard_samples.txt")
main.run
