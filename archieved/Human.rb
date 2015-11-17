class Human
attr_reader :name, :gender
	def initialize (name, gender)
		@name = name
		@gender = gender
	end

	def desc
		"this is #{@name}, he is a #{@gender}"
	end

end

class Teacher < Human
	attr_reader :tools
	def initialize(school,name,gender)
		@name = name
		@gender = gender
		@school = school
		@tools =[]
		tool!
	end
end

def tool!
	@tools<<Book.new
end

class Programmer < Human
	def flip_table
		"programmer done mad, he flip the table "
	end
end

class Book
	def initialize
		@book_name = "exercise"
	end
end

ali = Teacher.new("Smk","Ali","male")

puts ali.class
puts ali.inspect
puts ali.desc