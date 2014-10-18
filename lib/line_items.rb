require_relative 'dishes'

class LineItem

	attr_reader :item_list

	def initialize
		@item_list = []
	end

	def add_item(dish, quantity)
		@item_list << [dish, quantity]
	end

	def item_cost(dish, quantity)
		item_list.each do
			if dish
				total = dish.cost * quantity
				return "#{quantity} #{dish.name} costs £#{'%.2f' % total}"
			end
		end
	end


end