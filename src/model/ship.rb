class Ship 
	attr_reader :cells
	def initialize(cell)
		@cells = []
		self.add(cell)
	end
	
	#def add?(cell)
	#	!@cells.include?(cell) || @cells.any? { |c| c.close? cell }
	#end
	
	def add(cell)
		#raise 'Not possible to add this cell' unless self.add? cell
		@cells << cell
		cell.ship = self
		return self
	end

	def delete(cell)
		@cells.delete(cell)
		cell.ship = nil
	end

end