require './rover'
require './position'

describe Rover do
	describe "when creating" do
		context "with valid parameters" do
			before do
				@rover = Rover.new(Position.new(1, 2), 'N')
			end

			it "should store the correct position" do				
				@rover.position.should eql(Position.new(1, 2))
			end

			it "should store the correct heading" do
				@rover.heading.should eq('N')
			end
		end

		context "with invalid parameters" do
			it "should raise invalid position error when position is nil" do
				expect { Rover.new(nil, 'N') }.to raise_error(RuntimeError, 'Invalid position of rover.')
			end

			it "should raise invalid heading error when heading is nil" do
				expect { Rover.new(Position.new(1, 2), nil) }.to raise_error(RuntimeError, 'Invalid heading of rover.')
			end

			it "should raise invalid heading error when heading is not N, S, W or E" do
				expect { Rover.new(Position.new(1, 2), 'X') }.to raise_error(RuntimeError, 'Invalid heading of rover.')
			end
		end
	end

	describe "when moving forward2" do
		context 'heading to north' do
			it "should increment y" do
				rover = Rover.new(Position.new(1, 2), 'N')
				rover.execute 'M'
				rover.position.should eql(Position.new(1, 3))		
			end
		end		

		context 'heading to south' do
			it "should decrement y" do
				rover = Rover.new(Position.new(1, 2), 'S')
				rover.execute 'M'
				rover.position.should eql(Position.new(1, 1))		
			end
		end

		context 'heading to west' do
			it "should decrement x" do
				rover = Rover.new(Position.new(1, 2), 'W')
				rover.execute 'M'
				rover.position.should eql(Position.new(0, 2))		
			end
		end

		context 'heading to north' do
			it "should increment x" do
				rover = Rover.new(Position.new(1, 2), 'E')
				rover.execute 'M'
				rover.position.should eql(Position.new(2, 2))		
			end
		end
	end
end