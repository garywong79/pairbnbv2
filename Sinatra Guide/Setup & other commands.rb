# Create Table Schema & Model
#1) bundle 
#2) rake generate:migration NAME =create_QuestionVotes
#3) rake generate:model NAME =question_vote

# migration

#1) rake db:create
#2) rake exec & rake db:migrate

# add gem 
#1) add inside config, init.rb

# add index
def change
		add_index :urls, :short_url
end

# add_column
def change
		add_column :urls, :click_count, :integer, :default =>0
end

