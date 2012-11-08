class Plateau
	attr_reader :width, :height

	def initialize(width, height)
		raise 'Invalid width of plateau.' unless width and width > 0
		raise 'Invalid height of plateau.' unless height and height > 0

		@width = width
		@height = height
	end
end