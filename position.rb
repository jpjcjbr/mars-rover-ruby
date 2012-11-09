class Position
	attr_reader :x, :y, :heading
	
	def initialize(x, y, heading)
		raise 'Invalid heading of rover.' unless heading and [:N, :W, :S, :E].include?(heading)
		
		@x = x
		@y = y
		@heading = heading
	end

	def eql?(object)		
		object.x == self.x and object.y == self.y and object.heading == self.heading
	end

	def increment_x
		Position.new(x + 1, y, heading)		
	end

	def decrement_x
		Position.new(x - 1, y, heading)
	end

	def increment_y
		Position.new(x, y + 1, heading)
	end

	def decrement_y
		Position.new(x, y - 1, heading)
	end

	def change_heading_to(new_heading)
		Position.new(x, y, new_heading)
	end
end