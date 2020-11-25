class Station
  attr_reader :name,
              :address,
              :fuel_type,
              :access_times

  def initialize(station_data)
    @name = station_data[:station_name]
    @address = station_data[:street_address]
    @fuel_type = station_data[:fuel_type_code]
    @access_times = station_data[:access_days_time]
    @city = station_data[:city]
    @state = station_data[:state]
  end
end