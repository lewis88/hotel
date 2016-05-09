#------------------------------------------------------------------------------#
#--------- Room ---------------------------------------------------------------#
#------------------------------------------------------------------------------#
# The class 'Room' has a room type (single, twin, double, luxury) and a booking
# array of dates which are occupied.
# The room is a subclass of the hotel but the only thing it inherits is the name
# of the hotel.

# require_relative("Minibar.rb")

class Room

  attr_accessor(:room_number, :room_type, :bookings, :no_of_beds )

  def initialize(room_number, room_type)

    no_of_beds = case room_type.downcase
      when "single" then 1
      when "double", "twin" then 2
      when "luxury" then 4
      else 0
    end

    @room_number = room_number
    @room_type = room_type
    @bookings = []
    @no_of_beds = no_of_beds
    @minibar = []

  end

  # Add reservation method adds a start-date and end-date array to our bookings
  # array.
  def add_reservation(start_date, end_date)
    @bookings << [start_date, end_date]
  end

  # confirm_dates method determines if there is a clash with another booking.
  # If end_date is after another bookings start date then there is a clash.
  # Likewise if the start_date starts before another end_date then there is a clash
  def confirm_date(start_date, end_date)
    confirm = 0
    for booking in @bookings
      if start_date >= booking[0] && start_date < booking[1]
        confirm += 1
      elsif end_date > booking[0] && end_date <= booking[1]
        confirm += 1
      elsif start_date <= booking[0] && end_date >= booking[1]
        confirm += 1
      end
    end
    return confirm
    # if confirmation is 1 then there is a clash. 0 if not.
  end

  # def take_item()

end
