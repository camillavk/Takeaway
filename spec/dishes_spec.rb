require 'dishes'

describe Dish do 

	let (:dish) {Dish.new("Pizza", 3.20)}

	it "should initialize with a name" do
		expect(dish.name).to eq("Pizza")
	end

	it "should initialize with a cost" do
		expect(dish.cost).to eq(3.20)
	end

	it "can display the name and cost of the dish" do
		expect(dish.display).to eq("Pizza, £3.20")
	end

end