require_relative 'dishes'

class LineItem

	attr_reader :item_list

	def initialize
		@item_list = []
	end

	def add_item(dish, quantity)
		@item_list << [dish, quantity]
	end

end