class Rover
	attr_reader :position, :heading

	def initialize(position, heading)
		raise 'Invalid position of rover.' unless position
		raise 'Invalid heading of rover.' unless heading and [:N, :W, :S, :E].include?(heading)

		@position = position
		@heading = heading
	end

	def execute(command)
		case command
		when 'M'
			update_position
		when 'L'
			rotate_left
		when 'R'
			rotate_right
		end
	end
	
	def update_position
		case heading
		when :N
			@position = @position.increment_y
		when :S
			@position = @position.decrement_y
		when :W
			@position = @position.decrement_x
		when :E
			@position = @position.increment_x
		end
	end

	def rotate_left
		case heading
		when :N
			@heading = :W
		when :W
			@heading = :S
		when :S
			@heading = :E		
		when :E
			@heading = :N
		end
	end

	def rotate_right
		case heading
		when :W
			@heading = :N
		when :S
			@heading = :W
		when :E
			@heading = :S
		when :N
			@heading = :E
		end
	end
end