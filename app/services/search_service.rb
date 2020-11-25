class SearchService
  def self.conn
    Faraday.new(url: 'https://developer.nrel.gov/')
  end

  def self.find_station(location)
    connection = conn.get("api/alt-fuel-stations/v1.json?api_key=#{ENV['NREL_API_KEY']}&location=#{location}&fuel_type=ELEC&limit=1&state=CO")
    JSON.parse(connection.body, symbolize_names: true)
  end
end