class Question < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_many :answers
	belongs_to :user
	has_many :question_votes

	validates :question_detail, presence:true

	def total_vote
		counter = 0

		self.question_votes.each do |question|
			counter+=question.vote_value
		end
		counter
	end
end
