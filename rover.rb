require './heading_to_north_state'
require './heading_to_south_state'
require './heading_to_west_state'
require './heading_to_east_state'

class Rover
	attr_reader :position

	def initialize(position)
		raise 'Invalid position of rover.' unless position		
		@position = position		
	end

	def execute(command)
		case command
		when 'M'
			@position = current_state.move_forward @position
		when 'L'
			@position = current_state.rotate_left @position
		when 'R'
			@position = current_state.rotate_right @position
		end
	end

	private
	def current_state
		case @position.heading
		when :N
			return HeadingToNorthState.new
		when :S
			return HeadingToSouthState.new
		when :W
			return HeadingToWestState.new
		when :E
			return HeadingToEastState.new
		end
	end
end