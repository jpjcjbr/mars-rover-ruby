require './launcher'

describe Launcher do
	describe "when launching" do
		context "with valid parameters" do
			before do
				@plateau = Plateau.new 5, 5
				@launcher = Launcher.new @plateau

				@rover = Rover.new Position.new(3, 3, :E)
				@commands = "MMRMMRMRRMR".chars
			end

			it "rover should finish at the right position" do
				@launcher.launch @rover, @commands
				@rover.position.should eql(Position.new(5, 1, :S))
			end
		end
	end
end