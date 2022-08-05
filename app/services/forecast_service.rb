class ForecastService
  def self.get_location_details(location)
    end_point = '/geocoding/v1/address'

    response = connection.get(end_point) do |faraday|
      faraday.params['key'] = ENV['mapquest_api_key']
      faraday.params['location'] = location
    end
    JSON.parse(response.body, symbolize_names: true)

  end

  def self.connection
    Faraday.new('http://www.mapquestapi.com')
  end
end
