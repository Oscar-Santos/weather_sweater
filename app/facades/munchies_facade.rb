class MunchiesFacade
  def self.get_details(location, food, destination)
    json_1 = MunchiesService.get_destination_details(location, food, destination)
    chinese_details = Restaurant.new(json_1[:businesses][1])

    json_2 = MunchiesService.get_pueblo_forecast(json_1[:businesses][0][:coordinates][:latitude], json_1[:businesses][0][:coordinates][:latitude])
    pueblo_forecast = Forecast.new(json_2)
    
  end
end
