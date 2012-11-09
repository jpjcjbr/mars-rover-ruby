require './position'

describe Position do
	describe "when creating" do
		context "with valid parameters" do
			it "should store x" do
				position = Position.new(1, 2, :N)
				position.x.should eq(1)
			end

			it "should store y" do
				position = Position.new(1, 2, :N)
				position.y.should eq(2)
			end

			it "should store heading" do
				position = Position.new(1, 2, :N)
				position.heading.should eq(:N)
			end
		end

		context "with invalid parameters" do
			it "should raise invalid heading error when heading is nil" do
				expect { Position.new(1, 2, nil) }.to raise_error(RuntimeError, 'Invalid heading of rover.')
			end

			it "should raise invalid heading error when heading is not N, S, W or E" do
				expect { Position.new(1, 2, :X) }.to raise_error(RuntimeError, 'Invalid heading of rover.')
			end
		end
	end



	it "should increment x" do
		Position.new(1, 2, :N).increment_x.should eql(Position.new(2, 2, :N))
	end

	it "should decrement x" do
		Position.new(1, 2, :N).decrement_x.should eql(Position.new(0, 2, :N))
	end

	it "should increment y" do
		Position.new(1, 2, :N).increment_y.should eql(Position.new(1, 3, :N))
	end

	it "should decrement y" do
		Position.new(1, 2, :N).decrement_y.should eql(Position.new(1, 1, :N))
	end

	it "should change heading" do
		Position.new(1, 2, :N).change_heading_to(:S).should eql(Position.new(1, 2, :S))
	end
end