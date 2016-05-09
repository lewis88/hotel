require("minitest/autorun")
require_relative("../room.rb")

class TestRoom < MiniTest::Test

  def setup
    @new_single_room = Room.new( 1, "Single")
    @new_double_room = Room.new( 2, "Double")
    @new_twin_room = Room.new( 3, "Twin")
    @new_luxury_room = Room.new( 4, "Luxury")
  end

  def test_no_of_beds
    single_beds = @new_single_room.no_of_beds
    double_beds = @new_double_room.no_of_beds
    twin_beds = @new_twin_room.no_of_beds
    luxury_beds = @new_luxury_room.no_of_beds
    assert_equal( 1, single_beds)
    assert_equal( 2, double_beds)
    assert_equal( 2, twin_beds)
    assert_equal( 4, luxury_beds)
  end

  def test_reservation
    booking1 = @new_single_room.add_reservation(26, 28)
    booking2 = @new_double_room.add_reservation(23, 25)
    booking3 = @new_twin_room.add_reservation(26, 29)
    booking4 = @new_luxury_room.add_reservation(18, 20)
    assert_equal( [26, 28], booking1[0])
    assert_equal( [23, 25], booking2[0])
    assert_equal( [26, 29], booking3[0])
    assert_equal( [18, 20], booking4[0])
  end

  def test_there_is_a_clash
    @new_single_room.add_reservation(26, 28)
    @new_double_room.add_reservation(23, 25)
    @new_twin_room.add_reservation(26, 29)
    @new_luxury_room.add_reservation(18, 20)
    confirm1 = @new_single_room.confirm_date(25, 27)
    confirm2 = @new_double_room.confirm_date(24, 26)
    confirm3 = @new_twin_room.confirm_date(27, 28)
    confirm4 = @new_luxury_room.confirm_date(17, 21)
    assert_equal(1, confirm1 )
    assert_equal(1, confirm2 )
    assert_equal(1, confirm3 )
    assert_equal(1, confirm4 )
  end

  def test_there_is_no_clash
    @new_single_room.add_reservation(26, 28)
    @new_double_room.add_reservation(23, 25)
    confirm5 = @new_single_room.confirm_date(21, 22)
    confirm6 = @new_double_room.confirm_date(26, 27)
    assert_equal(0, confirm5 )
    assert_equal(0, confirm6 )
  end

end
