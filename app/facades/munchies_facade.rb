class MunchiesFacade
  def self.get_details(location, food, destination)
    MunchiesService.get_destination_details(location, food, destination)
  end
end
