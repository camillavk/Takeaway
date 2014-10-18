require 'order'
require 'line_items'

describe Order do

	let(:order){Order.new}
	let(:line){double :line}

	it "should be able to add lines to the order" do
		expect{order.add_line(:line)}.to change{order.lines.count}.by (1)
	end

end