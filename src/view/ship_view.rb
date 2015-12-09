class ShipView < View
	
	def self.draw(ship, mode, start_x, start_y)
		ship.cells.each do |cell|
			x = start_x + cell.x * @cell_size
			y = start_y + cell.y * @cell_size
			# Set solid
			@batch.rectangle(x, y, @cell_size, @cell_size)
		end
	end
	
end