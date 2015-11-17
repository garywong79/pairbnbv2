class Car
	attr_reader :engine, :wheel, :color, :storage
	def initialize(engine, wheel, color)
		@engine = engine
		@wheel = wheel
		@color = color
		@storage = []
	end

end

class New

	Car.new.storage
	Car.new.engine
end
