#------------------------------------------------------------------------------#
#------- Hotel ----------------------------------------------------------------#
#------------------------------------------------------------------------------#
require_relative("room.rb")
# require_relative("chain.rb")

class Hotel

  attr_accessor(:hotel_name, :single_rooms, :double_rooms, :twin_rooms, :luxury_rooms )

  def initialize(hotel_name, single_rooms, double_rooms, twin_rooms, luxury_rooms)

    @hotel_name = hotel_name

    @single_rooms = []
    for i in 1 .. single_rooms
      @single_rooms << Room.new(i, "Single")
    end

    @double_rooms = []
    for i in single_rooms .. (single_rooms + double_rooms)
      @double_rooms << Room.new(i, "Double")
    end

    @twin_rooms = []
    for i in (single_rooms + double_rooms) .. (single_rooms + double_rooms + twin_rooms)
      @twin_rooms << Room.new(i, "Twin")
    end

    @luxury_rooms = []
    for i in (single_rooms + double_rooms + twin_rooms) .. (single_rooms + double_rooms + twin_rooms + luxury_rooms)
      @luxury_rooms << Room.new(i, "Luxury")
    end

  end

  def welcome_message
    puts """
    Welcome to the Grand #{@hotel_name} Hotel.
    We are your gracious hosts and we hope to attend to your every whim and
    desire while you are here. Before you can get on with enjoying your stay we
    require a few details from you.

    May I take your full name please ...
    """
    name = gets.chomp.split(/ /)
    first_name = name[0]
    last_name = name[1]

    # Put searcher function here to determine if the hotel chain already knows mr/mrs ...

    puts """
    How many adults will be staying with you today Mr(s) #{last_name}?
    """
    no_of_adults = gets.chomp.to_i

    puts """
    Do you have any children Mr(s) #{last_name}?
    """
    no_of_children = gets.chomp.to_i

    # This code is working out how many children in twin rooms and how many in single rooms
    if no_of_children % 2 == 0
      is_even = true
      no_twin_rooms = (no_of_children/2)
    elsif no_of_children % 2 == 1
      is_even = false
      no_of_twin_rooms = ((no_of_children-1)/2)
    end

    puts """
    """


  end

  def reservation
    puts """
    Hello, you are through to the reservations of the Grand #{@hotel_name} Hotel!

    """

  # def book_room(room_type)
  #   i = 0
  #   choice = []
  #   while i < @single_room.length
  #     if @single_room[i] != 0
  #       choice += [i+1]
  #       puts "Single room number's #{choice[]} is available, would you like said room? (Y/N)"
  #       print "> "
  #       choice = gets.chomp.downcase
  #       if choice == 'y'
  #         puts "Excellent choice the views from this room are fantastic." # Perhaps put a random message here
  #         @single_room[i] = 1
  #       elsif choice == 'n'
  #         puts "Do not worry Sir/Madam, I'm sure we can find a suitable room for you"
  #         i += 1
  #       else
  #         i += 1
  #       end
  #     i +=1
  #   end
  # end

  # def check_in
  #
  #
  # end
  #
  # def checkout
  #
  # end
  #
  # def bill
  #
  # end




end
