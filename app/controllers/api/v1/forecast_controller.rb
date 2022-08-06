class Api::V1::ForecastController < ApplicationController
  def index
    @location = ForecastFacade.get_location(params[:location])
    require "pry"; binding.pry
  end
end
