require './heading_to_west_state'
require './position'

describe HeadingToWestState do
	describe "when rotating left" do
		it "should be heading to south" do
			new_position = HeadingToWestState.new.rotate_left Position.new(1, 2, :W)
			new_position.should eql(Position.new(1, 2, :S))
		end
	end

	describe "when rotating right" do
		it "should be heading to north" do
			new_position = HeadingToWestState.new.rotate_right Position.new(1, 2, :W)
			new_position.should eql(Position.new(1, 2, :N))
		end
	end

	describe "when moving forward" do
		it "should decrement x" do
			new_position = HeadingToWestState.new.move_forward Position.new(1, 2, :W)
			new_position.should eql(Position.new(0, 2, :W))
		end
	end
end