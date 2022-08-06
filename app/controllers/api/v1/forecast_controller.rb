class Api::V1::ForecastController < ApplicationController
  def index
    @location = ForecastFacade.get_location(params[:location])
  end
end
