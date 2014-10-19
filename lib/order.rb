require_relative 'line_items'

class Order

	attr_reader :final_order, :final_price

	def initialize
		@final_order = []
		@total = 0
	end

	def add_line(line_item)
		final_order << line_item
	end

def display
@final_order.map.with_index do |line_item, index|
return "#{index+1}. #{line_item.quantity} #{line_item.dish.name} - £#{'%.2f' % line_item.total}"
end
end

	def final_price
		# @final_order.map {|dish| dish.total}.inject(&:+)
			# return "Total cost is £#{'%.2f' % total_cost}"
			@final_order.inject(0) { |total,line_item| total += line_item.total }
	end

end