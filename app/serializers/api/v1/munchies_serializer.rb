class Api::V1::MunchiesSerializer
  def self.information_index(restaurant_details, city_forecast, location)
    {
  data: {
    id: nil,
    type: "munchie",
    attributes: {
      destination_city: location,
      forecast: {
        summary: city_forecast.summary,
     temperature: city_forecast.temperature
      },
      restaurant: {
        name: restaurant_details.name,
        address: restaurant_details.address
      }
    }
  }
}

  end
end
