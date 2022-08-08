class Api::V1::MunchiesController < ApplicationController
  def index
    destination = "pueblo,co"
    location = MunchiesFacade.get_details(params[:location], params[:food], destination)
  end
end
