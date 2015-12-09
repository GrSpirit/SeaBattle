class View
	@batch = nil
	@cell_size = 10

	def self.cell_size
		@cell_size
	end

	def self.cell_size=(cell_size)
		@cell_size = cell_size
	end

	def self.batch
		@batch
	end

	def self.batch=(batch)
		@batch = batch
	end
end
