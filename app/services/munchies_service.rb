class MunchiesService
  def self.get_destination_details(location, food, destination)
    end_point = '/v3/businesses/search'
    response = yelp_connection.get(end_point) do |faraday|
      faraday.headers['Authorization'] = "Bearer #{ENV['yelp_api_key']}"
      faraday.params["location"] = destination
      faraday.params["term"] = food
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.yelp_connection
    Faraday.new(url: 'https://api.yelp.com')
  end
end
