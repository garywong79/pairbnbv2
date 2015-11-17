#plant orange tree OK
#tree grow some amount taller each year -- OrangeTree#height, OrangeTree#age Y
#it will bear some oranges and not necessary same time with tree growth Y
#tree stop grow after certain year Y
#Show the age of the tree -- OrangeTree#age Y
#tree die when reach certain year and return true -- OrangeTree#dead? Y
#pick up oranges as soon as it does -- OrangeTree#pick_an_orange!
#return true if there are any oranges false otherwise -- OrangeTree#any_oranges?

# This is how you define your own custom exception classes
require 'byebug'

class NoOrangesError < StandardError
end

class OrangeTree

  attr_reader :height, :age

  def initialize
    @age = 0
    @height = 0
    @oranges = []
  end


  # Ages the tree one year
  def age!
    @age +=1 unless @age == 50
    # rand(20..50).times do 
    # @oranges << Orange.new
    # end
    rand(10..20).times{@oranges<<Orange.new}
  end

  def height
    @height += rand(1..3)*@age
  end

  def dead?
    if @age == 50
      true
    else
      false
    end
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
    # rand(1..3).times.map{@oranges.pop}
    @oranges.pop
  end
end

class Orange
  # Initializes a new Orange with diameter +diameter+
  attr_accessor :diameter

  def initialize
    @diameter = rand(1..3)
  end
end

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

  # It places the oranges in the basket
  # IT PLACES THE ORANGES IN THE BASKET
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

  total_diameter = 0
  avg_diameter = 0

  basket.each do |orange|
  total_diameter += orange.diameter
  avg_diameter = total_diameter/ basket.length
  end

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"