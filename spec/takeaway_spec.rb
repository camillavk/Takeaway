require 'takeaway'
require 'order'
require 'customer'

describe Takeaway do 

	let(:takeaway){Takeaway.new}
	let(:order){double :order, final_price: 9}
	let(:customer){double :customer, name: "Camilla"}

	it "should initialize with a menu" do
		expect(takeaway.menu).not_to be nil
	end

	it "should be able to take an order from a customer" do
		expect{takeaway.take_order(order, customer)}.to change{takeaway.order_count}.by 1
	end

	it "should remove the order once it has been completed" do
		takeaway.take_order(order, customer)
		expect{takeaway.complete(order)}.to change{takeaway.order_count}.by -1
	end

	it "should send a text to customers to confirm order" do
		expect(takeaway).to receive(:send_confirmation)
		takeaway.take_order(order, customer)
	end

end