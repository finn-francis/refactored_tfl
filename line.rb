class Line
	attr_accessor :stations
	attr_reader :name

	def initialize(name)
		@name = name
		@stations = []
	end
end
