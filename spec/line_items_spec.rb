require 'line_items'
require 'dishes'

describe LineItem do 

	let(:pizza){Dish.new("Pizza", 3)}
	let(:line_item){LineItem.new(pizza)}

	it "has a default capacity of 1" do
		expect(line_item.quantity).to eq(1)
	end

	it "should be able to calculate the running total of the line item" do
		line_item = LineItem.new(pizza, 3)
		expect(line_item.total).to eq(9)
	end

end