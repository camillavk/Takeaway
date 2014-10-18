require_relative 'line_items'

class Order

	attr_reader :final_order, :total_cost

	def initialize
		@final_order = []
	end

	def add_line(line_item)
		@final_order << line_item
	end

	def total_cost
		@final_order.flatten!(1)
		total_cost = @final_order.inject(0) {|total, line_item|  total + line_item.total}
			# return "Total cost is £#{'%.2f' % total_cost}"
	end

end