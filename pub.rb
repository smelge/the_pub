class Pub
  attr_reader :name, :drinks, :drunk_max,:age_limit
  attr_accessor :till,:customer_wallet,:drunk

  def initialize(name,drinks)
    @name = name
    @drinks = drinks
    @till = 0
    @drunk_max = 100
    @age_limit = 18
    @customer_wallet = 0
    @drunk = 0
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

  def sell_drink(customer,bought_drink)
    # check drunk level, refuse if over
    if @drunk < @drunk_max
      return "No more drink for you"
    else
      @customer_wallet = customer.money
      for drink in @drinks
        if drink.name == bought_drink
          cost = drink.price
        end
      end
      @till += cost
      @customer_wallet -= cost
      return "Enjoy."
    end
  end
end
