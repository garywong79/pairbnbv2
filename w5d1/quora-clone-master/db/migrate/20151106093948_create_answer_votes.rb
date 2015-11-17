class CreateAnswerVotes < ActiveRecord::Migration
	def change

		create_table :answer_votes do |t|
			t.integer :vote_value
			t.integer :answer_id
			t.integer :user_id
			t.timestamps
		end
	
	end
end
