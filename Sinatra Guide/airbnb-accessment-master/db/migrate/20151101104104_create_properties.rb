class CreateProperties < ActiveRecord::Migration
	def change
		create_table :properties do |t|
			t.string :property_detail, null:false
			t.string :property_price, null:false
			t.integer :user_id
		end
	end
end
