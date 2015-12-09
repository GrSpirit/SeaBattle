class FleetView < View
	attr_accessor :mode

	@colorFleet = Color.new(0, 0, 0, 1)
	@colorShot = Color.new(1, 0, 0, 1)
	
	def self.draw(fleet, mode, start_x, start_y)
		# Draw grid
		fleet.each do |row|
			row.each do |cell|
				x = start_x + cell.x * @cell_size
				y = start_y + cell.y * @cell_size
				#Draw rectangle
				setColor(@colorFleet)
				@batch.rectangle(x, y, @cell_size, @cell_size)
				#Draw shot
				if cell.shot?
					x = start_x + (cell.x + 0.5) * @cell_size
					y = start_y + (cell.y + 0.5) * @cell_size
					setColor(@colorShot)
					@batch.ellipse(x, y, @cell_size / 2, @cell_size / 2)
				end
			end
		end

		fleet.ships.each do |ship|
			shipView.draw ship, mode, start_x, start_y
		end
	end
end