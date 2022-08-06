class ForecastFacade
  def self.get_location(location)
    json = ForecastService.get_city_weather(location)


  end
end
