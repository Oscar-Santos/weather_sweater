# class MunchiesFacade
#   def self.get_details(location, food)
#     json_1 = MunchiesService.get_destination_details(location, food)
#
#     restaurant_details = Restaurant.new(json_1[:businesses])
#
#     json_2 = MunchiesService.get_city_forecast(json_1[:businesses][0][:coordinates][:latitude], json_1[:businesses][0][:coordinates][:longitude])
#     city_forecast = Forecast.new(json_2)
#
#   end
# end
