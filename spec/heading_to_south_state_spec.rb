require './heading_to_south_state'
require './position'

describe HeadingToSouthState do
	describe "when rotating left" do
		it "should be heading to east" do
			new_position = HeadingToSouthState.new.rotate_left Position.new(1, 2, :S)
			new_position.should eql(Position.new(1, 2, :E))
		end
	end

	describe "when rotating right" do
		it "should be heading to west" do
			new_position = HeadingToSouthState.new.rotate_right Position.new(1, 2, :S)
			new_position.should eql(Position.new(1, 2, :W))
		end
	end

	describe "when moving forward" do
		it "should decrement y" do
			new_position = HeadingToSouthState.new.move_forward Position.new(1, 2, :S)
			new_position.should eql(Position.new(1, 1, :S))
		end
	end
end