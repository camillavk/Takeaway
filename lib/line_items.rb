require_relative 'dishes'

class LineItem

	attr_accessor :item_list, :quantity

	def initialize
		@item_list = []
		@quantity = quantity
	end

	def add_item(dish, quantity)
		@item_list << [dish.name, quantity, dish.cost*quantity]
	end

	def item_cost(dish, quantity)
		@item_list.each do
			dish
			total = dish.cost * quantity
				return "#{quantity} #{dish.name} costs £#{'%.2f' % total}"
		end
	end


end