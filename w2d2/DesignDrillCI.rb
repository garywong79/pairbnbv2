require 'byebug'
class Animal
    attr_accessor :food_type

    def initialize (body_color,food_type)
    @body_color = body_color
    @food_type = food_type
    @num_of_leg = 4
    end
end

class Mammal < Animal
  
    def leg
        @food_type = "chicken" 
    end

    def warm_blood?
    "is warm_blood"
    end
end

class Amphibian < Animal
    def warm_blood?
    "is not warm_blood"
    end
end

class Primate < Mammal
end

class Frog < Amphibian
  
end

class Bat < Mammal
end

class Chimpanzee < Primate
end

goat = Mammal.new("White","Grass")
frog = Frog.new("Green","insect")

puts "goat is eating #{goat.food_type}, is a #{goat.warm_blood?}"
puts "frog is eating #{frog.food_type}, is a #{frog.warm_blood?}"







