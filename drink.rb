class Drink
  attr_reader :drink,:price,:alcohol_level

  def initialize(drink,price,alcohol_level)
    @drink = drink
    @price = price
    @alcohol_level = alcohol_level
  end
end
