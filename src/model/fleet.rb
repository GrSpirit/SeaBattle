class Fleet
	def initialize(args)
		@ships = []
		@cells = []
		for i in 0..9
			@cells << []
			for j in 0..9
				@cells[i] << Cell.new(i, j)
			end
		end
	end
	
	def valid?(ship)
		@ships.each do |s|
			s.cells.each do |c|
				return false if ship.cells.any? { |e| e == c || c.near? e }
			end
		end
		return true
	end
	
end