class Api::V1::ForecastController < ApplicationController
  def index
    all_weather = ForecastFacade.get_location(params[:location])

    render json: Api::V1::ForecastSerializer.forecast_index(all_weather[0], all_weather[1], all_weather[2])
  end
end
