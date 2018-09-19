class Customer
  attr_reader :name,:age
  attr_accessor :money,:drunk

  def initialize(name,money,age)
    @name = name
    @money = money
    @age = age
    @drunk = 0
  end


end
