class Fleet
	def initialize
		@ships = []
		@cells = []
		for i in 0..9
			@cells << []
			for j in 0..9
				@cells[i] << Cell.new(i, j)
			end
		end
	end

	def valid?
		counts = {}
		@ships.each do |s|
			counts[s.cells.count] = (counts[s.cells.count] || 0) + 1
		end

		raise 'Wrong cell count in a ship' unless counts.keys.all? { |k| k >= 1 && k <= 4 }
		(1..4).each do |k|
			raise 'Wrong number of #{k} cell ships' unless counts[k] == 5 - k
		end

		return true
	end

	def put(x, y)
		return if @cells[x][y].ship
		ships = []
		for i in (x-1)..(x+1)
			for j in (y-1)..(y+1)
				ships << get_ship(i, j)
			end
		end
		
		raise 'Two or more ships close to this cell' if ships.count { |s| s } > 1
		(0..4).each { |i| ships.delete_at(i) }
		
		ship = ships.find { |s| s }

		if ship.nil?
			raise 'To many ships' if @ships.count == 10
			@ships << Ship.new(@cells[x][y])
		else
			ship.add(@cells[x][y])
		end
	end

	def get_ship(x, y)
		return nil if x < 0 || x > 9 || y < 0 || y > 9
		return @cells[x][y].ship
	end
end