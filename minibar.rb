#------------------------------------------------------------------------------#
#---------- Minibar -----------------------------------------------------------#
#------------------------------------------------------------------------------#

require_relative("room.rb")

class Minibar < Room

  def initialize(room_number, contents_array)
    @room_number = Room.room_number
