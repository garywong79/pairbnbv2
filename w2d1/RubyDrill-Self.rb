The SELF keyword. Self is a shortcut keyword to access the context that the program is currently working inside of. It mainly use for 2 purpose:
1) For class method, SELF refers to the class itself
2) for instance method context, SELF refers to the particular instance of the class

What is class & instance method? 


Class method is use for a group, for example: 

class Person

	def self.leg # same as Person.leg, and person = Person.new, person.leg
		"got 2 legs"
	end

	def hair_color
		self.color_type = "straight" # similar to create attr_accessor for color_type
			# Amy = Person.new, amy.hair_color == amy.color_type
			# preferable method type to easy to control when lot of codes
	end
end


Instance method is use for individual, individual has different hair color.
Person got 2 legs


