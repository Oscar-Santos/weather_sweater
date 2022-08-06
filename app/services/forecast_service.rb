class ForecastService
  def self.get_city_weather(location)
    end_point = '/geocoding/v1/address'

    response = connection.get(end_point) do |faraday|
      faraday.params['key'] = ENV['mapquest_api_key']
      faraday.params['location'] = location
    end
    coordinates = JSON.parse(response.body, symbolize_names: true)

    lat = coordinates[:results][0][:locations][0][:latLng][:lat]
    lng = coordinates[:results][0][:locations][0][:latLng][:lng]
    get_destination_weather(lat, lng)
  end




  def self.connection
    Faraday.new('http://www.mapquestapi.com')
  end
end
