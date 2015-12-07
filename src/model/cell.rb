class Cell 
	attr_reader :x, :y
	attr_writer :shot
	attr_accessor :ship
	def initialize(x, y)
		@x = x
		@y = y
		@shot = false
	end
	
	def close?(cell)
		if (@x == cell.x && [@y - 1, @y + 1].include?(cell.y)) ||
			([@x - 1, @x + 1].include?(cell.x) && @y == cell.y)
			return true
		end
		return false
	end

	def near?(cell)
		return true if [@x - 1, @x + 1].include?(cell.x) && [@y - 1, @y + 1].include?(cell.y)
		return false
	end

	def shot?()
		@shot
	end

end