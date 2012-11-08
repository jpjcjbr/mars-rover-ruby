require './position'

describe Position do
	describe "when creating" do
		context "with valid parameters" do
			it "should store x" do
				position = Position.new(1, 2)
				position.x.should eq(1)
			end

			it "should store y" do
				position = Position.new(1, 2)
				position.y.should eq(2)
			end
		end
	end

	it "should increment x" do
		Position.new(1, 2).increment_x.should eql(Position.new(2, 2))
	end

	it "should decrement x" do
		Position.new(1, 2).decrement_x.should eql(Position.new(0, 2))
	end

	it "should increment y" do
		Position.new(1, 2).increment_y.should eql(Position.new(1, 3))
	end

	it "should decrement y" do
		Position.new(1, 2).decrement_y.should eql(Position.new(1, 1))
	end
end