class BaseService
  def self.openweather_connection
    Faraday.new('https://api.openweathermap.org')
  end


  def self.mapquest_connection
    Faraday.new('http://www.mapquestapi.com')
  end
end
