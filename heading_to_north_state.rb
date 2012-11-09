class HeadingToNorthState
	def rotate_left(position)
		position.change_heading_to(:W)
	end

	def rotate_right(position)
		position.change_heading_to(:E)
	end

	def move_forward(position)
		position.increment_y
	end
end