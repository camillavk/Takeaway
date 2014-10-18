require_relative 'dishes'

class Menu

attr_accessor :dishes

	def initialize
		@dishes = []
	end

	def place(dish)
		@dishes << dish
	end

	def list_dishes
		@dishes.map {|dish| "#{dish.name}, £#{'%.2f' % dish.cost}"}
	end

end