require 'line_items'

describe LineItem do 

	let(:line_item){LineItem.new}
	let(:dish){double :dish, name: "Pizza", cost: 3}

	it "should be able to receive a dish and quantity" do 
		line_item.add_item(dish, 3)
		expect(line_item.item_list.count).to eq(1)
	end

	it "should be able to calculate the total of the line item" do
		line_item.add_item(dish, 3)
		expect(line_item.item_cost(dish, 3)).to eq("3 Pizza costs £9.00")
	end

end