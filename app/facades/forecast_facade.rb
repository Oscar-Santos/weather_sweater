class ForecastFacade
  def self.get_location(location)
    ForecastService.get_location_details(location)
  end
end
