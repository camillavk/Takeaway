class Order

	attr_reader :lines

	def initialize
		@lines = []
	end

	def add_line(line)
		@lines << line
	end



end