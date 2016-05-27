require 'pry'
require './station'
require './seeds' # Load up @lines and @stations
require './move'

# We start with Oxford Circus
my_station = @stations.select {|station| station.name.start_with? "Oxford"}.first

# Let people move around the stations, one hop at a time
prev_line = nil
loop do
  puts "#{"After riding on " + prev_line.name + " " if !prev_line.nil?} You're at #{my_station.name}"
  puts "Pick one! (or Q to exit)"
  my_station.neighbors.each_with_index do |station, idx|
    # %%%TODO (Lorin) For some reason, stations come in as nil when we're near the end of a line.
    next if station.nil?
    puts "#{idx + 1}. #{station.name}"
  end
  choice = gets.chomp
  # Bail if they're tired of going around the tube
  break if choice == "" || choice.downcase == "q"
  choice = choice.to_i
  # Hold on to all the neighbors for the previous station
  nbrs = my_station.neighbors
  # Hold on to a list of all the previous lines from the previous station
  prev_all_lines = my_station.lines
  # Go to the new station
  my_station = nbrs[choice - 1]
  prev_line = (prev_all_lines & my_station.lines).first
end









