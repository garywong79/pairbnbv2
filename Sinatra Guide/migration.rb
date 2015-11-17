class CreateUsers < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.string :name, null: false
			t.string :password, null: false
			t.string :email, null:false
			t.string :profile_bio 
			t.string :description
		end
	end
end

class CreateQuestions < ActiveRecord::Migration
	def change
		create_table :questions do |t|
			t.string :question_detail
			t.integer :user_id
			t.timestamps
		end
	end
end