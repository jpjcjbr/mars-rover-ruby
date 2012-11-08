class Position
	attr_reader :x, :y
	
	def initialize(x, y)
		@x = x
		@y = y
	end

	def eql?(object)		
		object.x == self.x and object.y == self.y
	end

	def increment_x
		Position.new(x + 1, y)		
	end

	def decrement_x
		Position.new(x - 1, y)		
	end

	def increment_y
		Position.new(x, y + 1)		
	end

	def decrement_y
		Position.new(x, y - 1)		
	end
end