# Implement tree aging
#implement ornage picking

# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  # Ages the tree one year
  attr_reader :height, :age

  def initialize(height=0,age=0)
  	@height = height
  	@age = age
  	@orange = []
  end

  def age!
  	@age +=1
  	@height += @age * rand(1..3)
  	rand(5..10).times do @orange << Orange.new
  	end
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
  	if @orange.size >= 1
  		true
  	else
  		false
  	end
  end

  def dead?
  	if @age == 30
  		true
  	else
  		false
  	end
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?

    # orange-picking logic goes here
    @orange.pop
  end
end

class Orange
  # Initializes a new Orange with diameter +diameter+
  attr_reader :diameter

  def initialize(diameter=0)
  	@diameter = rand(2..5)
  end
end

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
basket =[]

	while tree.any_oranges?
		basket<<tree.pick_an_orange!
	end


	total_diameter = 0
	avg_diameter = 0 

		basket.each do |orange|
		total_diameter+= orange.diameter
		avg_diameter = total_diameter/basket.length
	end

	# total_diameter = basket.each do |orange|
	# 		+= orange.diameter
	# 	end

	# 	avg_diameter = total_diameter/basket.length

						




	puts "Year #{tree.age} Report"
	puts "Tree height: #{tree.height} feet"
	puts "harvest: #{basket.size} orange with an average diameter of #{avg_diameter} inches"
	puts ""

		tree.age!
end

puts "Alas, the tree, she is dead!"