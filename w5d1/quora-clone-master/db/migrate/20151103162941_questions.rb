class Questions < ActiveRecord::Migration
	def change
		create_table :questions do |t|
			t.text :question_detail
			t.integer :user_id
			t.timestamps
		end
	end
end
