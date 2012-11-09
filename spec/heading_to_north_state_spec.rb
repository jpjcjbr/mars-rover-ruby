require './heading_to_north_state'
require './position'

describe HeadingToNorthState do
	describe "when rotating left" do
		it "should be heading to west" do
			new_position = HeadingToNorthState.new.rotate_left Position.new(1, 2, :N)
			new_position.should eql(Position.new(1, 2, :W))
		end
	end

	describe "when rotating right" do
		it "should be heading to east" do
			new_position = HeadingToNorthState.new.rotate_right Position.new(1, 2, :N)
			new_position.should eql(Position.new(1, 2, :E))
		end
	end

	describe "when moving forward" do
		it "should increment y" do
			new_position = HeadingToNorthState.new.move_forward Position.new(1, 2, :N)
			new_position.should eql(Position.new(1, 3, :N))
		end
	end
end