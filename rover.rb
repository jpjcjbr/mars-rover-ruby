class Rover
	attr_reader :position, :heading

	def initialize(position, heading)
		raise 'Invalid position of rover.' unless position
		raise 'Invalid heading of rover.' unless heading and ['N', 'S', 'W', 'E'].include?(heading)

		@position = position
		@heading = heading
	end

	def execute(command)
		case command
		when 'M'
			update_position
		when 'L'
		when 'R'
		end

		
	end

	def update_position
		case heading
		when 'N'
			@position = @position.increment_y
		when 'S'
			@position = @position.decrement_y
		when 'W'
			@position = @position.decrement_x
		when 'E'
			@position = @position.increment_x
		end
	end
end