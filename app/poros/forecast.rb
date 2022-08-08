class Forecast
  attr_reader :summary,
              :temperature

  def initialize(data)
    @summary = data[:weather][0][:description]
    @temperature = data[:main][:temp]
  end
end
