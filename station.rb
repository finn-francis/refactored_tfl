require './line'

class Station
	attr_accessor :lines
	attr_reader :name

	def initialize(name)
		@name = name
		@lines = []
	end

	def neighbors
		# Start with an empty array, and bring in for this station all of its lines
		self.lines.inject([]) do |result, line|
			# For this given line, find my position amongst all the stations.
			index = line.stations.index(self)
			# Add the station one less than me (as long as it's not the beginning)
			result << line.stations[index - 1] if index > 0
			# Add the station one more than me (as long as it's not the end)
			result << line.stations[index + 1] if index < (line.stations.count - 1)
		end
	end

	# Factory for building Station objects
	def self.build_station(name, line)
		station = Station.new(name)
		station.lines = [line]
		line.stations << station
		station
	end
end
