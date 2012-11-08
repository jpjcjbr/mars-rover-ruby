require './launcher'

describe Launcher do
	describe "when launching" do
		context "with valid parameters" do
			before do
				@plateau = Plateau.new(5, 5)
				@launcher = Launcher.new(@plateau)

				@rover = Rover.new(Position.new(3, 3), 'E')
				@commands = "MMRMMRMRRMR".split
			end

			it "rover should finish at the right position" do
				@launcher.launch @rover, @commands
				@rover.position.should eql(Position.new(5, 1))
			end

			it "rover should finish with the right heading" do
				@launcher.launch @rover, @commands
				@rover.heading.should eq('S')
			end
		end
	end
end