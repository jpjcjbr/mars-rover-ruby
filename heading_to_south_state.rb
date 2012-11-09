class HeadingToSouthState
	def rotate_left(position)
		position.change_heading_to(:E)
	end

	def rotate_right(position)
		position.change_heading_to(:W)
	end

	def move_forward(position)
		position.decrement_y
	end	
end