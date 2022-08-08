class Api::V1::MunchiesController < ApplicationController
  def index
    destination = "pueblo,co"
    location = MunchiesFacade.get_details(params[:location], params[:food], destination)

    json_1 = MunchiesService.get_destination_details(params[:location], params[:food], destination)
    chinese_details = Restaurant.new(json_1[:businesses][1])

    render json: Api::V1::MunchiesSerializer.information_index(chinese_details)
  end
end
