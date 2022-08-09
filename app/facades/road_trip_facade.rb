class RoadTripFacade
  def self.get_roadtrip_details(origin, destination)
    ForecastService.get_roadtrip_details(origin, destination)
  end
end
