require 'menu'

describe Menu do 

	let(:menu){Menu.new}
	let(:dish){double :dish, name: "Pizza", cost: 3.20}

	it "should be able to receive a new dish" do 
		expect{menu.place(:dish)}.to change{menu.dishes.count}.by (1)
	end

	it "should be able to list dishes on the menu" do
		menu.place(dish)
		expect(menu.list_dishes).to include("Pizza, £3.20")
	end

end