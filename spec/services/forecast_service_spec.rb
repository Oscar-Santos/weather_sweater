require 'rails_helper'

RSpec.describe ForecastService do
  it 'returns current weather' do
    forecast_1 = ForecastService.get_city_weather('denver,co')
  end

  it 'returns daily weather' do
    forecast_2 = ForecastService.get_city_weather('denver,co')
  end

  it 'returns hourly weather' do
    forecast_3 = ForecastService.get_city_weather('denver,co')
  end
end
