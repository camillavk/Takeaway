require 'menu'

describe Menu do 

	let(:menu){Menu.new}
	let(:pizza){double :dish, name: "Pizza", cost: 3.20}
	# let(:burger){double :dish(name: "Burger", cost: 5.25)}

	xit "should be able to place dishes on the menu" do
		menu.place(pizza)
		# menu.place(burger)
		expect(menu.list_dishes).to eq("Pizza, £3.20")
	end

end