class AddColumnToUrls < ActiveRecord::Migration
	def self.up
		add_column :urls, :click_count, :integer
	end

	def self.down
		add_column :urls, :click_count
	end
end
