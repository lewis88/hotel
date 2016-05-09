#------------------------------------------------------------------------------#
#---------- Customer ----------------------------------------------------------#
#------------------------------------------------------------------------------#
# The customer class holds all the attributes that the hotel is concerned with.
#

class Customer

  attr_accessor( :forename, :surname, :identity,   )

  def initialize( name, no_of_adults, no_of_children, payment)

    @name = name
    @no_of_adults = no_of_adults
    @no_of_children = no_of_children
    @deposit = deposit/2.0
    @payment = payment
    @identity = identity  # simple true or false value requiring passport/drivers license

  end

end
