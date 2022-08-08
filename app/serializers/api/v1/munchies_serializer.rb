class Api::V1::MunchiesSerializer
  def self.information_index(chinese_details, pueblo_forecast, destination)
    {
  data: {
    id: nil,
    type: "munchie",
    attributes: {
      destination_city: destination,
      forecast: {
        summary: pueblo_forecast.summary,
     temperature: pueblo_forecast.temperature
      },
      restaurant: {
        name: chinese_details.name,
        address: chinese_details.address
      }
    }
  }
}

  end
end
