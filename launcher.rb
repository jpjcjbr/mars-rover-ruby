class Launcher
	def initialize(plateau)
		
	end

	def launch(rover, commands)
		commands.each do |command|
			rover.execute command
		end
	end
end