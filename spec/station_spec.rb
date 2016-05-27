require 'pry'
require 'minitest/autorun'
require './station'
require './seeds' # Load up @lines and @stations

class StationSpec < MiniTest::Spec
  describe Station do
    before do
      seed_data
      @oc = @stations.select {|station| station.name == "Oxford Circus"}.first
      @stockwell = @stations.select {|station| station.name == "Stockwell"}.first
      @brixton = @stations.select {|station| station.name == "Brixton"}.first
    end

    it "should find neighbors of Oxford Circus properly" do
      neighbors = @oc.neighbors
      neighbors.count.must_equal 6
      neighbors.wont_include @oc
      ["Regent's Park", "Piccadilly Circus", "Tottenham Court Road",
       "Bond Street", "Warren Street", "Green Park"].each do |neighbor|
        neighbors.map(&:name).must_include(neighbor)
      end
    end

    it "should show neighbors of Stockwell properly" do
      neighbors = @stockwell.neighbors
      neighbors.count.must_equal 4
      neighbors.wont_include @stockwell
      ["Oval", "Clapham North", "Vauxhall", "Brixton"].each do |neighbor|
        neighbors.map(&:name).must_include(neighbor)
      end
    end

    it "should show neighbors of Brixton properly" do
      neighbors = @brixton.neighbors
      binding.pry
      neighbors.count.must_equal 1
      neighbors.wont_include @brixton
      neighbors.first.must_equal @stockwell
    end
  end
end
