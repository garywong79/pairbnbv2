# implement aging - every year, tree grow in height, bear some fruit - fruit grow in diff diameter
# implement orange picking

class NoOrangesError < StandardError
end

class OrangeTree
  # Ages the tree one year
  attr_reader :height, :age

  def initialize(height=0, age=0)
  	@height = height
  	@age = age
  	@oranges = []
  end

  def age!
  	@age +=1
  	@height += @age *rand(1..3) if @age >2
  	bear_fruit
  end

  def bear_fruit
  	rand(5..10).times do @oranges << Orange.new
  	end if @age >2
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
  	if @oranges.length > 0
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
    @oranges.pop
  end

  def dead?
  	if @age == 30
  		true
  	else
  		false
  	end
  end
end

class Orange
  # Initializes a new Orange with diameter +diameter+
  attr_accessor :diameter
  def initialize(diameter=0)
  	@diameter = rand(1..3)
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




	puts "Year #{tree.age} Report"
	puts "Tree height: #{tree.height} feet"
	puts "harvest: #{basket.size} orange with an average diameter of #{avg_diameter} inches"
	puts ""

		tree.age!
end

puts "Alas, the tree, she is dead!"