require 'customer'

describe Customer do

	let(:customer){Customer.new("Camilla", "077248783299")}

	it "should initialize with a name" do
		expect(customer.name).to eq("Camilla")
	end

	it "should initialize with a mobile number" do
		expect(customer.mobile).to eq("077248783299")
	end

end