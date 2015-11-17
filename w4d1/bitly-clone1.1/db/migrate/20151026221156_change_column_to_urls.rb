class ChangeColumnToUrls < ActiveRecord::Migration
	def self.up
		change_column :urls, :click_count, :integer, :default => 0
	end

	def self.down
		add_column :urls, :click_count, :integer
	end
end
