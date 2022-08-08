class Api::V1::MunchiesSerializer
  def self.information_index(chinese_details)
    {
  data: {
    id: nil,
    type: "munchie",
    attributes: {
      "destination_city": "Pueblo, CO",
      "forecast": {
        "summary": "Cloudy with a chance of meatballs",
        "temperature": "83"
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
