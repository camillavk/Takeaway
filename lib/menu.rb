require 'dishes'

class Menu

attr_accessor :dishes

	def initialize
		@dishes = []
	end

	def place(dish)
		@dishes << dish
	end

	def list_dishes
		dishes.each {|name, cost| puts "#{name} costs £#{cost}"}
	end

end