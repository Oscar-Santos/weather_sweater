class Api::V1::RoadTripController < ApplicationController
  def create
    trip = RoadTripFacade.get_roadtrip_details(params[:origin], params[:destination])
  end
end
