class Ship 
	attr_reader :cells
	def initialize(cell)
		@cells = [cell]
	end
	
	def add?(cell)
		!@cells.include?(cell) || @cells.any? { |c| c.close? cell }
	end
	
	def add(cell)
		raise 'Not possible to add this cell' unless self.add? cell
		@cells << cell
		return self
	end

	def delete(cell)
		@cells.delete(cell)
	end

end