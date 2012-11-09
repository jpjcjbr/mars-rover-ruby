require './heading_to_east_state'
require './position'

describe HeadingToEastState do
	describe "when rotating left" do
		it "should be heading to north" do
			new_position = HeadingToEastState.new.rotate_left Position.new(1, 2, :E)
			new_position.should eql(Position.new(1, 2, :N))
		end
	end

	describe "when rotating right" do
		it "should be heading to south" do
			new_position = HeadingToEastState.new.rotate_right Position.new(1, 2, :E)
			new_position.should eql(Position.new(1, 2, :S))
		end
	end

	describe "when moving forward" do
		it "should increment x" do
			new_position = HeadingToEastState.new.move_forward Position.new(1, 2, :E)
			new_position.should eql(Position.new(2, 2, :E))
		end
	end
end