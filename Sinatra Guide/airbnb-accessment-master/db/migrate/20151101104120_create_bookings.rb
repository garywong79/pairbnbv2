class CreateBookings < ActiveRecord::Migration
	def change
		create_table :bookings do |t|
			t.string :booking_details
			t.date :booking_date
			t.integer :user_id
			t.integer :property_id
			t.timestamps
		end
	end
end
