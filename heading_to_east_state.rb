class HeadingToEastState
	def rotate_left(position)
		position.change_heading_to(:N)
	end

	def rotate_right(position)
		position.change_heading_to(:S)
	end

	def move_forward(position)
		position.increment_x
	end
end