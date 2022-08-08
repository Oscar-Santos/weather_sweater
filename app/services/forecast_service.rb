class ForecastService

  def self.get_city_weather(location)
    end_point = '/geocoding/v1/address'
    response_1 = mapquest_connection.get(end_point) do |faraday|
    faraday.params['key'] = ENV['mapquest_api_key']
    faraday.params['location'] = location
  end
    coordinates = JSON.parse(response_1.body, symbolize_names: true)

    lat = coordinates[:results][0][:locations][0][:latLng][:lat]
    lng = coordinates[:results][0][:locations][0][:latLng][:lng]
    get_destination_weather(lat, lng)
  end

  def self.get_destination_weather(lat, lng)
    end_point = '/data/2.5/onecall'
    response_2 = openweather_connection.get(end_point) do |faraday|
    faraday.params['appid'] = ENV['open_weather_api_key']
    faraday.params['lat'] = lat
    faraday.params['lon'] = lng
    faraday.params['units'] = 'imperial'
  end
    JSON.parse(response_2.body, symbolize_names: true)
  end


  def self.openweather_connection
    Faraday.new('https://api.openweathermap.org')
  end


  def self.mapquest_connection
    Faraday.new('http://www.mapquestapi.com')
  end
end
