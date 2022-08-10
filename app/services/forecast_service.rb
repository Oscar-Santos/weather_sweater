class ForecastService < BaseService

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

  def self.find_roadtrip_details(origin, destination)
    response = mapquest_connection.get('/directions/v2/route') do |faraday|
     faraday.params['key'] = ENV['mapquest_api_key']
     faraday.params['from'] = origin
     faraday.params['to'] = destination
   end
   JSON.parse(response.body, symbolize_names: true)
  end

end
