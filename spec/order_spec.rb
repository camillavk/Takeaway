require 'order'
require 'line_items'

describe Order do

	let(:order){Order.new}
	let(:pizza){Dish.new("Pizza", 3)}
	let(:line_item_three){LineItem.new(pizza, 2)}
	let(:line_item){double :line_item, total: 3}
	# let(:line_item2){LineItem.new(pizza, 3)}
	let(:line_item2){double :line_item, total: 4}

	it "should be able to add lines to the order" do
		expect{order.add_line(:line_item)}.to change{order.final_order.count}.by (1)
	end

	it "should be able to display the final order" do
		order.add_line(line_item_three)
		expect(order.display).to eq("1. 2 Pizza - £6.00")
	end

	it "should be able to calculate the total cost of the order" do
		order.add_line(line_item)
		order.add_line(line_item2)
		expect(order.final_price).to eq(7)
	end

end