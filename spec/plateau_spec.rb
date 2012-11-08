require './plateau'

describe Plateau do
	describe "when creating" do
		context "with valid size" do
			before do
				@plateau = Plateau.new(1, 2)
			end

			it "should store the correct width" do
				@plateau.width.should eq(1)				
			end

			it "should store the correct height" do
				@plateau.height.should eq(2)
			end
		end

		context "with invalid size" do
			it "should raise width invalid error when width is zero" do
				expect { Plateau.new(0, 1) }.to raise_error(RuntimeError, 'Invalid width of plateau.')
			end			

			it "should raise width invalid error when width is negative" do
				expect { Plateau.new(-1, 1) }.to raise_error(RuntimeError, 'Invalid width of plateau.')
			end

			it "should raise width invalid error when width is nil" do
				expect { Plateau.new(nil, 1) }.to raise_error(RuntimeError, 'Invalid width of plateau.')
			end

			it "should raise height invalid error when height is zero" do
				expect { Plateau.new(1, 0) }.to raise_error(RuntimeError, 'Invalid height of plateau.')
			end

			it "should raise height invalid error when height is negative" do
				expect { Plateau.new(1, -1) }.to raise_error(RuntimeError, 'Invalid height of plateau.')
			end

			it "should raise height invalid error when height is nil" do
				expect { Plateau.new(1, nil) }.to raise_error(RuntimeError, 'Invalid height of plateau.')
			end
		end
	end	
end