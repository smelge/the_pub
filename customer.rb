class Customer
  attr_reader :name,:age
  attr_accessor :money

  def initialize(name,money,age)
    @name = name
    @money = money
    @age = age
  end

  
end
