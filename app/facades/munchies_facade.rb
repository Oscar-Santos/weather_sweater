class MunchiesFacade
  def self.get_details(location, food, destination)
    json_1 = MunchiesService.get_destination_details(location, food, destination)
    chinese_details = Restaurant.new(json_1[:businesses][1])

  end
end
