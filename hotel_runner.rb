#------------------------------------------------------------------------------#
#----- Hotel Runner -----------------------------------------------------------#
#------------------------------------------------------------------------------#

require_relative("Hotel.rb")

grand_budapest = Hotel.new("Budapest", 3, 3, 3, 2)

grand_budapest.welcome_message

print grand_budapest.single_rooms[0].room_number

print grand_budapest.double_rooms[2].room_number

puts ""
puts grand_budapest.double_rooms[2].hotel_name
