# class Restaurant
#   attr_reader :name,
#               :address
#   def initialize(data)
#     @name = data[0][:name]
#     @address = full_address(data)
#
#   end
#
#   def full_address(data)
#       data[0][:location][:address1] + " " + data[0][:location][:city] + ", "  +  data[0][:location][:state]  + " " + data[0][:location][:zip_code]
#   end
# end
