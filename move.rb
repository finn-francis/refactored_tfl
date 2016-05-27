class Move
	attr_accessor :origin, :destination, :previous_move, :next_move

	def initialize(origin, destination)
		unless origin.neighbors.include?(destination)
			raise "Destination must be a neighbor of the origin!!!"
		end
	end
end
