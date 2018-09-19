require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

  def setup()
    # [drink, price, alcohol_level]
    @drink1 = Drink.new("Gin and Tonic",3,4)
    @drink2 = Drink.new("Irn Bru on the rocks", 4, 0)
    @drink3 = Drink.new("Pint of Whisky",600,100)

    # [name,money,age]
    @customer1 = Customer.new("Peter Whiffle",50,67)
    @customer2 = Customer.new("Janet Staples",25,23)
    @customer3 = Customer.new("Jason Cup",695,17)

    @pub = Pub.new("The Jammy Dodger",[@drink1,@drink2,@drink3])
  end

  def test_pub_name()
    assert_equal("The Jammy Dodger", @pub.name())
  end

  def test_g_and_t_price()
    assert_equal(3,@drink1.price())
  end

  def test_till_is_zero
    assert_equal(0,@pub.till)
  end

  def test_base_drunk_level
    assert_equal(100,@pub.drunk_level)
  end

  def test_min_age
    assert_equal(18,@pub.age_limit)
  end

  # def test_customer_buys_drink()
  #   # what drink
  #   # drink price
  #   # can afford?
  #   # old enough?
  #
  # end
end
