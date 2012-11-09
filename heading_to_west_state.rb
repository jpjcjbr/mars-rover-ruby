class HeadingToWestState
	def rotate_left(position)
		position.change_heading_to(:S)
	end

	def rotate_right(position)
		position.change_heading_to(:N)
	end

	def move_forward(position)
		position.decrement_x
	end
end