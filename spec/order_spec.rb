require 'order'
require 'line_items'

describe Order do

	let(:order){Order.new}
	let(:line_item){double :line_item, cost: 3, quantity: 1}
	let(:line_item2){double :line_item, cost: 2, quantity: 2}

	it "should be able to add lines to the order" do
		expect{order.add_line(:line_item)}.to change{order.final_order.count}.by (1)
	end

	xit "should be able to calculate the total cost of the order" do
		order.add_line(:line_item)
		order.add_line(:line_item2)
		expect(order.total_cost).to eq(7)
	end

end