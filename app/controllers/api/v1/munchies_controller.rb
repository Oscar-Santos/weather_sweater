class Api::V1::MunchiesController < ApplicationController
  def index
    destination = "Pueblo,co"
    location = MunchiesFacade.get_details(params[:location], params[:food], destination)

    json_1 = MunchiesService.get_destination_details(params[:location], params[:food], destination)
    chinese_details = Restaurant.new(json_1[:businesses][1])

    json_2 = MunchiesService.get_pueblo_forecast(json_1[:businesses][0][:coordinates][:latitude], json_1[:businesses][0][:coordinates][:latitude])
    pueblo_forecast = Forecast.new(json_2)

    render json: Api::V1::MunchiesSerializer.information_index(chinese_details, pueblo_forecast, destination)
  end
end
