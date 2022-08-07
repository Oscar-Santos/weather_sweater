  require 'rails_helper'

  RSpec.describe ForecastFacade do
    it 'returns current forecast', :vcr do
      current = ForecastFacade.get_location('denver,co')
    end

  it 'returns daily forecast', :vcr do
    weather = ForecastService.get_city_weather('denver,co')
    daily = ForecastFacade.get_daily_weather(weather[:daily])
    expect(daily).to be_an(Array)
      expect(daily.count).to eq(5)
      daily.each do |day|
        expect(day).to be_a(DailyForecast)
    end
  end

  it 'returns hourly forecast', :vcr do
     weather = ForecastService.get_city_weather('denver,co')
     hourly = ForecastFacade.get_hourly_weather(weather[:hourly])
     expect(hourly).to be_an(Array)
     expect(hourly.count).to eq(8)
     hourly.each do |hour|
       expect(hour).to be_a(HourlyForecast)
     end
  end
end
