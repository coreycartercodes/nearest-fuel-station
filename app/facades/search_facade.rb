class SearchFacade
  def self.find(location)
    json = SearchService.find_station(location)
    @station = Station.new(json[:fuel_stations][0])
    binding.pry
  end

  def self.get(from, address, city, state)
    json = MapService.get_directions(address, city, state)
    binding.pry
  end
end