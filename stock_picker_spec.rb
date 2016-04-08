require_relative "stock_picker.rb"
#require "Rspec"

describe 'stock picker do' do 
	it "picks the correct days for largest profit" do 
		expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
	end
	
end
