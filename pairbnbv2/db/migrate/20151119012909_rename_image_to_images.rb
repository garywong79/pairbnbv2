class RenameImageToImages < ActiveRecord::Migration
  def up
  	rename_column :lists, :image, :images
  	change_column :lists, :images, :text
  end

  def down
  	rename_column :lists, :images, :image
  	change_column :lists, :image, :string
  end
end
