class MapService
  def self.conn
    Faraday.new(url: 'https://www.mapquestapi.com/')
  end

  def self.get_directions(address, city, state)
    connection = conn.get("directions/v2/route?key=#{ENV['MAPQUEST_API_KEY']}&from=address+CO&to=Boulder%2C+CO&outFormat=json&ambiguities=ignore&routeType=fastest&doReverseGeocode=false&enhancedNarrative=false&avoidTimedConditions=false")
    JSON.parse(connection.body, symbolize_names: true)
  end
end