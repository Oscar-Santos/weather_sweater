class ForecastFacade
  def self.get_location(location)
    all_weather = ForecastService.get_city_weather(location)

    current = CurrentForecast.new(all_weather[:current])
    daily = get_daily_weather(all_weather[:daily])
  end

  def self.get_daily_weather(weather)
    weather[0..4].map do |daily_weather|
      DailyForecast.new(daily_weather)
    end
  end
  
end
