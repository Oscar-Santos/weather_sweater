class RoadTrip
  attr_reader :travel_time,
              :start_city,
              :end_city,
              :destination_conditions,
              :destination_temp



  def initialize(data, destination_temp, destination_conditions)
    @start_city = data[:route][:locations][0][:adminArea5]
    @end_city = data[:route][:locations][1][:adminArea5]
    @travel_time = data[:route][:formattedTime]
    @destination_temp = destination_temp
    @destination_conditions = destination_conditions
  end

end

#
# def travel_time(data)
#     minute_round = 0
#     time = data[:route][:formattedTime]
#     hours = time.slice(0..1).to_i
#     minutes = time.slice(3..4).to_i
#     if minutes < 30
#       minute_round = 0
#     elsif minutes >= 30
#       minute_round = 1
#     end
#     total_hours = hours + minute_round
#   end
#
