# class Api::V1::MunchiesController < ApplicationController
#   def index
#
#     location = MunchiesFacade.get_details(params[:location], params[:food])
#
#     json_1 = MunchiesService.get_destination_details(params[:location], params[:food])
#     restaurant_details = Restaurant.new(json_1[:businesses])
#
#     json_2 = MunchiesService.get_city_forecast(json_1[:businesses][0][:coordinates][:latitude], json_1[:businesses][0][:coordinates][:longitude])
#     city_forecast = Forecast.new(json_2)
#
#     render json: Api::V1::MunchiesSerializer.information_index(restaurant_details, city_forecast, params[:location])
#
#   end
# end
