class ForecastFacade
  def self.get_location(location)
    all_weather = ForecastService.get_city_weather(location)

    current = CurrentForecast.new(all_weather[:current])
  end

end
