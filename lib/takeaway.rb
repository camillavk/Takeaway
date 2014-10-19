require_relative 'order'

class Takeaway

	attr_accessor :menu, :orders

	def initialize(menu = Menu.new, orders=[])
		@menu = menu
		@orders = []
	end

	def order_count
		orders.count
	end

	def take_order(order, customer)
		orders << order
	end

	def complete(complete_order)
		orders.reject!{|order| order == complete_order}
	end


end