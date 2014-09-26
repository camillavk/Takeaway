class Dish

attr_reader :name, :cost

	def initialize(name, cost)
		@name = name
		@cost = cost
	end

	def display
		"#{name}, £#{'%.2f' % cost}"
	end

end