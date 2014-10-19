require_relative 'dishes'

class LineItem

	attr_accessor :dish, :quantity

	def initialize(dish, quantity = 1)
		@dish = dish
		@quantity = quantity
	end

	def total
			dish.cost * quantity
	end


end