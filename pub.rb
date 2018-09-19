class Pub
  attr_reader :name, :drinks, :drunk_level,:age_limit
  attr_accessor :till

  def initialize(name,drinks)
    @name = name
    @drinks = drinks
    @till = 0
    @drunk_level = 100
    @age_limit = 18
  end

  def can_afford (wallet,price)
    if wallet <= price
      return false
    else
      return true
    end
  end
  #
  def drink_exists(drink_in)
    p @drinks
    for drink in @drinks
      if drink.name == drink_in
        return true
      end
    end
    return false
  end

  def age_check(customer_age)
    if customer_age < @age_limit
      return false
    end
    return true
  end
end
