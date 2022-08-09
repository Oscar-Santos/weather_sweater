require 'rails_helper'

RSpec.describe Forecast do
  it 'returns Pueblo forecast details' do

    data = {
             :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04n"}],
             :base=>"stations",
             :main=>{:temp=>82.26, :feels_like=>80.51, :temp_min=>82.26, :temp_max=>82.26, :pressure=>1004, :humidity=>28, :sea_level=>1004, :grnd_level=>851},
             :visibility=>10000,
             :wind=>{:speed=>2.01, :deg=>100, :gust=>2.39},
             :clouds=>{:all=>74},
          }
    forecast = Forecast.new(data)

    expect(forecast.summary).to eq("broken clouds")
    expect(forecast.temperature).to eq(82.26)

    end
end
