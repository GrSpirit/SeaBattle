class Ship 
	def initialize(cell)
		@cells = [cell]
	end
	
	def add?(cell)
		!@cells.include?(cell) || @cells.any? { |c| c.close? cell }
	end
	
	def add(cell)
		ship = Ship.new(@cells)
		ship.add!(cell)
	end

	def add!(cell)
		raise 'Not possible to add this cell' unless self.add? cell
		@cells << cell
		return self
	end

end