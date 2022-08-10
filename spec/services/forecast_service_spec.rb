require 'rails_helper'

RSpec.describe ForecastService do
  it 'returns current weather', :vcr do
    forecast = ForecastService.get_city_weather('denver,CO')

    expect(forecast).to be_a(Hash)

    expect(forecast).to have_key(:current)
    expect(forecast[:current]).to be_a(Hash)

    expect(forecast[:current]).to have_key(:dt)
    expect(forecast[:current][:dt]).to be_a(Integer)

    expect(forecast[:current]).to have_key(:sunrise)
    expect(forecast[:current][:sunrise]).to be_a(Integer)

    expect(forecast[:current]).to have_key(:sunset)
    expect(forecast[:current][:sunset]).to be_a(Integer)

    expect(forecast[:current]).to have_key(:temp)
    expect(forecast[:current][:temp]).to be_a(Float)

    expect(forecast[:current]).to have_key(:feels_like)
    expect(forecast[:current][:feels_like]).to be_a(Float)

    expect(forecast[:current]).to have_key(:pressure)
    expect(forecast[:current][:pressure]).to be_a(Integer)

    expect(forecast[:current]).to have_key(:humidity)
    expect(forecast[:current][:humidity]).to be_a(Integer)

    expect(forecast[:current]).to have_key(:dew_point)
    expect(forecast[:current][:dew_point]).to be_a(Float)

    expect(forecast[:current]).to have_key(:uvi)
    expect(forecast[:current][:uvi]).to be_a(Numeric)

    expect(forecast[:current]).to have_key(:clouds)
    expect(forecast[:current][:clouds]).to be_a(Integer)

    expect(forecast[:current]).to have_key(:visibility)
    expect(forecast[:current][:visibility]).to be_a(Integer)

    expect(forecast[:current]).to have_key(:wind_speed)
    expect(forecast[:current][:wind_speed]).to be_a(Numeric)

    expect(forecast[:current]).to have_key(:wind_deg)
    expect(forecast[:current][:wind_deg]).to be_a(Integer)

    expect(forecast[:current]).to have_key(:weather)
    expect(forecast[:current][:weather]).to be_a(Array)

    expect(forecast[:current][:weather].first).to have_key(:description)
    expect(forecast[:current][:weather].first[:description]).to be_a(String)

    expect(forecast[:current][:weather].first).to have_key(:icon)
    expect(forecast[:current][:weather].first[:icon]).to be_a(String)

  end

  it 'returns daily weather', :vcr do
    forecast_2 = ForecastService.get_city_weather('denver,CO')

    expect(forecast_2).to be_a(Hash)

    expect(forecast_2).to have_key(:daily)
    expect(forecast_2[:daily]).to be_a(Array)

    expect(forecast_2[:daily].first).to have_key(:dt)
    expect(forecast_2[:daily].first[:dt]).to be_a(Integer)

    expect(forecast_2[:daily].first).to have_key(:sunrise)
    expect(forecast_2[:daily].first[:sunrise]).to be_a(Integer)

    expect(forecast_2[:daily].first).to have_key(:sunset)
    expect(forecast_2[:daily].first[:sunset]).to be_a(Integer)

    expect(forecast_2[:daily].first).to have_key(:temp)
    expect(forecast_2[:daily].first[:temp]).to be_a(Hash)

    expect(forecast_2[:daily].first[:temp]).to have_key(:max)
    expect(forecast_2[:daily].first[:temp][:max]).to be_a(Float)

    expect(forecast_2[:daily].first[:temp]).to have_key(:min)
    expect(forecast_2[:daily].first[:temp][:min]).to be_a(Float)

    expect(forecast_2[:daily].first).to have_key(:weather)
    expect(forecast_2[:daily].first[:weather]).to be_a(Array)

    expect(forecast_2[:current][:weather].first).to have_key(:description)
    expect(forecast_2[:current][:weather].first[:description]).to be_a(String)

    expect(forecast_2[:current][:weather].first).to have_key(:icon)
    expect(forecast_2[:current][:weather].first[:icon]).to be_a(String)
  end

  it 'returns hourly weather', :vcr do
    forecast_3 = ForecastService.get_city_weather('denver,CO')

    expect(forecast_3).to be_a(Hash)

    expect(forecast_3).to have_key(:hourly)
    expect(forecast_3[:hourly]).to be_a(Array)

    expect(forecast_3[:hourly].first).to have_key(:dt)
    expect(forecast_3[:hourly].first[:dt]).to be_a(Integer)

    expect(forecast_3[:hourly].first).to have_key(:temp)
    expect(forecast_3[:hourly].first[:temp]).to be_a(Float)

    expect(forecast_3[:current][:weather].first).to have_key(:description)
    expect(forecast_3[:current][:weather].first[:description]).to be_a(String)

    expect(forecast_3[:current][:weather].first).to have_key(:icon)
    expect(forecast_3[:current][:weather].first[:icon]).to be_a(String)
  end

  it 'finds road trip details', :vcr do
    trip_details = ForecastService.find_roadtrip_details('denver,co', 'pueblo,co')

    expect(trip_details).to be_a(Hash)

    expect(trip_details).to have_key(:route)
    expect(trip_details).to be_a(Hash)

    expect(trip_details[:route]).to have_key(:formattedTime)
    expect(trip_details[:route][:formattedTime]).to be_a(String)

    expect(trip_details[:route]).to have_key(:sessionId)
    expect(trip_details[:route][:sessionId]).to be_a(String)

    expect(trip_details[:route]).to have_key(:distance)
    expect(trip_details[:route][:distance]).to be_a(Float)
  end
end
