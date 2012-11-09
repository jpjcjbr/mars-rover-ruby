require './rover'
require './position'

describe Rover do
	describe "when creating" do
		context "with valid parameters" do
			before do
				@rover = Rover.new Position.new(1, 2, :N)
			end

			it "should store the correct position" do				
				@rover.position.should eql(Position.new(1, 2, :N))
			end		
		end

		context "with invalid parameters" do
			it "should raise invalid position error when position is nil" do
				expect { Rover.new(nil) }.to raise_error(RuntimeError, 'Invalid position of rover.')
			end		
		end
	end
end