require_relative '../../config/application'


class CreateTodos < ActiveRecord::Migration
  def change
    
    	create_table :todos do |t|
    		t.string :description
    		t.string :status
    end
  end
end